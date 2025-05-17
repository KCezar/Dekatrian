import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart';
import '/providers/country/brazil_holiday_providers.dart';
import '/providers/country/brazil_subdivision_provider.dart';
import '/providers/religion/catholic_providers.dart';
import '/providers/database_providers.dart';
import '/domain/models/holiday_specification.dart';
import '/domain/models/subdivision.dart';
import '/domain/models/country_config.dart';
import '/domain/models/religion_config.dart';
import '/data/local/database.dart';


/// Estado da UI para seleção
final selectedCountriesProvider = StateProvider<List<String>>((_) => []);
final selectedRegionsProvider   = StateProvider<List<String>>((_) => []);
final selectedReligionProvider  = StateProvider<String?>((_) => null);

// --- Registros de providers existentes ---
final List<CountryConfig> countryConfigs = [
  CountryConfig(
    code: 'BR',
    name: 'Brasil',
    getSubdivisions: () => BrazilSubdivisionProvider.getAll(),
    getHolidays: (year) => BrazilHolidayProvider.getHolidays(year),
  ),
  // adicionar novos CountryConfig para outros países aqui
];

final List<ReligionConfig> religionConfigs = [
  ReligionConfig(
    code: 'catholic',
    name: 'Católico',
    getAllHolidays: (year) => CatholicHolidayProvider.getHolidays(year),
  ),
  // adicionar novos ReligionConfig aqui
];

// --- Providers para UI ---

/// Lista de países disponíveis
final countriesProvider = Provider<List<Subdivision>>((ref) {
  return countryConfigs
      .map((c) => Subdivision(code: c.code, name: c.name))
      .toList();
});

final subdivisionsProvider = Provider<List<Subdivision>>((ref) {
  final selected = ref.watch(selectedCountriesProvider);
  final subs = <Subdivision>[];
  for (var code in selected) {
    final cfg = countryConfigs.firstWhere((c) => c.code == code);
    subs.addAll(cfg.getSubdivisions());
  }
  return subs;
});

final availableReligionsProvider = Provider<List<ReligionConfig>>((ref) {
  final countries = ref.watch(selectedCountriesProvider);
  final regions   = ref.watch(selectedRegionsProvider);
  final year      = DateTime.now().year;
  return religionConfigs.where((rc) {
    final hols = rc.getAllHolidays(year);
    return hols.any((h) {
      final codes = h.subdivisionCodes;
      if (codes == null) return true;
      return countries.any((c) => codes.contains(c)) ||
             regions.any((r)  => codes.contains(r));
    });
  }).toList();
});

/// Lista de feriados filtrados por país, subdivisão e religião
final filteredHolidaysProvider = Provider<List<HolidaySpecification>>((ref) {
  final countries = ref.watch(selectedCountriesProvider);
  final regions   = ref.watch(selectedRegionsProvider);
  final religion  = ref.watch(selectedReligionProvider);
  final year      = DateTime.now().year;
  final specs = <HolidaySpecification>[];

  for (var c in countries) {
    final cfg = countryConfigs.firstWhere((c2) => c2.code == c);
    specs.addAll(cfg.getHolidays(year).where((h) {
      final codes = h.subdivisionCodes;
      return codes == null ||
             codes.contains(c) ||
             codes.any((code) => regions.contains(code));
    }));
  }

  if (religion != null) {
    final rc = religionConfigs.firstWhere((r) => r.code == religion);
    specs.addAll(rc.getAllHolidays(year).where((h) {
      final codes = h.subdivisionCodes;
      return codes == null ||
             countries.any((c) => codes.contains(c)) ||
             regions.any((r) => codes.contains(r));
    }));
  }

  return specs;
});

/// Salva a seleção do usuário no banco de dados (tabela Feriado)
/// Persiste países/regiões/religião + limpa/insere feriados
Future<void> saveHolidayPreferences(
  WidgetRef ref, {
  int? preferenceId,
}) async {
  final countries = ref.read(selectedCountriesProvider);
  final regions   = ref.read(selectedRegionsProvider);
  final religion  = ref.read(selectedReligionProvider);
  final countriesCsv = countries.join(',');
  final regionsCsv   = regions.join(',');
  final religionCsv  = religion ?? '';

  final db = ref.read(databaseProvider);

  // 0) Se for criação, verifica se já existe aquela combinação
  if (preferenceId == null) {
    final dup = await (db.select(db.holidayPreferences)
          ..where((t) =>
             t.countries.equals(countriesCsv) &
             t.regions.equals(regionsCsv)     &
             t.religion.equals(religionCsv)))
        .getSingleOrNull();
    if (dup != null) {
      preferenceId = dup.id;
    }
  }

  // upsert da preferência
  final companion = HolidayPreferencesCompanion(
    id: preferenceId != null ? Value(preferenceId) : const Value.absent(),
    countries: Value(countriesCsv),
    regions:   Value(regionsCsv),
    religion:  Value(religionCsv),
  );
  final newId = await db.upsertHolidayPreference(companion);
  final prefId = preferenceId ?? newId;

  // limpa toggles relacionados
    await (db.delete(db.feriadoToggle)
        ..where((t) => t.preferenceId.equals(prefId)))
      .go();

  final specs = ref.read(filteredHolidaysProvider);
  for (var h in specs) {
    final csv = h.subdivisionCodes?.join(',') ?? '';
    // tenta achar pelo trio nome+data+subdivisionCodes
    final existing = await (db.select(db.feriado)
          ..where((f) =>
             f.nome.equals(h.localName) &
             f.data.equals(h.date) &
             f.subdivisionCodes.equals(csv)))
        .getSingleOrNull();
    final ferComp =       FeriadoCompanion.insert(
        nome: h.localName,
        data: h.date,
        categoria: h.holidayTypes.map((t) => t.name).join(','),
        subdivisionCodes: csv,
      );
      final ferId = existing?.id ?? await db.inserirFeriado(ferComp);
    final togComp = FeriadoToggleCompanion.insert(
      feriadoId: ferId,
      preferenceId: prefId,
      isEnabled: const Value(true),
    );
    await db.upsertFeriadoToggle(togComp);
  }
}

/// Carrega as seleções anteriores do banco
final loadPreferencesProvider = FutureProvider<void>((ref) async {
  final db = ref.read(databaseProvider);
  final rows = await db.getAllHolidayPreferences();
  if (rows.isNotEmpty) {
    // Vamos usar a primeira preferência (ou ajuste sua lógica de múltiplas)
    final p = rows.first;
    ref.read(selectedCountriesProvider.notifier).state = p.countries.split(',');
    ref.read(selectedRegionsProvider  .notifier).state = p.regions.split(',');
    ref.read(selectedReligionProvider .notifier).state = p.religion;
  }
});

/// Provider para o estado de toggle por preferência
final preferenceToggleProvider = FutureProvider.family<bool, int>((ref, prefId) async {
  final db = ref.read(databaseProvider);
  final toggles = await db.getTogglesByPreference(prefId);
  if (toggles.isEmpty) return false;
  // ativo somente se todos estiverem habilitados
  return toggles.every((t) => t.isEnabled);
});

/// Lista de datas (DateTime) de todos os feriados com isEnabled = true
final enabledHolidayDatesProvider = FutureProvider<List<DateTime>>((ref) async {
  final db = ref.read(databaseProvider);
  // join feriado + toggle onde toggle.isEnabled == true
  final query = db.select(db.feriado).join([
    innerJoin(
      db.feriadoToggle,
      db.feriadoToggle.feriadoId.equalsExp(db.feriado.id),
    ),
  ])
    ..where(db.feriadoToggle.isEnabled.equals(true));

  final rows = await query.get();
  return rows.map((row) => row.readTable(db.feriado).data).toList();
});

/// Provider que retorna os nomes dos feriados habilitados para cada data
final holidayNamesByDateProvider =
    FutureProvider.family<List<String>, DateTime>((ref, date) async {
  final db = ref.read(databaseProvider);
  // join feriado + toggle onde toggle.isEnabled == true e data = date
  final rows = await (db.select(db.feriado).join([
    innerJoin(
      db.feriadoToggle,
      db.feriadoToggle.feriadoId.equalsExp(db.feriado.id),
    ),
  ])
        ..where(db.feriadoToggle.isEnabled.equals(true))
        ..where(db.feriado.data.equals(date)))
      .map((row) => row.readTable(db.feriado).nome)
      .get();

  return rows;
});