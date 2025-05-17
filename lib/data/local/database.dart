import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';                            

// 4) Definição da tabela
class Feriado extends Table {
  IntColumn     get id        => integer().autoIncrement()();
  TextColumn    get nome      => text()();
  DateTimeColumn get data     => dateTime()();
  TextColumn    get categoria => text()();
  TextColumn get subdivisionCodes => text()();
}

class FeriadoToggle extends Table {
  /// Referência ao feriado na tabela principal
  IntColumn get feriadoId   => integer().references(Feriado, #id)();
  /// Referência ao perfil de preferência
  IntColumn get preferenceId => integer().references(HolidayPreferences, #id)();
  /// Estado de habilitado/desabilitado
  BoolColumn get isEnabled   => boolean().withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {feriadoId, preferenceId};
}


// 5) Tabela de preferências de feriados
@DataClassName('HolidayPreferencesData')
class HolidayPreferences extends Table {
  IntColumn   get id         => integer().autoIncrement()();
  TextColumn  get countries  => text()();        // CSV: 'BR,AR,...'
  TextColumn  get regions    => text()();        // CSV: 'BR-SP,BR-RJ,...'
  TextColumn  get religion   => text().nullable()(); // ex: 'catholic' ou null
}


// 3) Anotação para geração
@DriftDatabase(tables: [Feriado, FeriadoToggle, HolidayPreferences])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Exemplo de CRUD
  Future<int> inserirFeriado(Insertable<FeriadoData> dado) {
    return into(feriado).insert(dado);
  }
  Future<List<FeriadoData>> listarFeriados() {
    return select(feriado).get();
  }

  /// Retorna todas as preferências salvas
  Future<List<HolidayPreferencesData>> getAllHolidayPreferences() {
    return select(holidayPreferences).get();
  }

  /// Insere ou atualiza (upsert) uma preferência
  Future<int> upsertHolidayPreference(Insertable<HolidayPreferencesData> row) {
    return into(holidayPreferences)
      .insertOnConflictUpdate(row);
  }

  /// (Opcional) Busca uma única preferência por ID
  Future<HolidayPreferencesData?> getHolidayPreferencesById(int id) {
    return (select(holidayPreferences)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  // Toggle CRUD
  Future<int> upsertFeriadoToggle(Insertable<FeriadoToggleData> row) {
    return into(feriadoToggle).insertOnConflictUpdate(row);
  }
  Future<List<FeriadoToggleData>> getTogglesByPreference(int preferenceId) {
    return (select(feriadoToggle)
          ..where((t) => t.preferenceId.equals(preferenceId)))
        .get();
  }

}

// Conexão SQLite
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'dekatrian.sqlite'));
    return NativeDatabase(file);
  });
}
