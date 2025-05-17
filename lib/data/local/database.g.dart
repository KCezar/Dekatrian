// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FeriadoTable extends Feriado with TableInfo<$FeriadoTable, FeriadoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FeriadoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<DateTime> data = GeneratedColumn<DateTime>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoriaMeta = const VerificationMeta(
    'categoria',
  );
  @override
  late final GeneratedColumn<String> categoria = GeneratedColumn<String>(
    'categoria',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subdivisionCodesMeta = const VerificationMeta(
    'subdivisionCodes',
  );
  @override
  late final GeneratedColumn<String> subdivisionCodes = GeneratedColumn<String>(
    'subdivision_codes',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nome,
    data,
    categoria,
    subdivisionCodes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'feriado';
  @override
  VerificationContext validateIntegrity(
    Insertable<FeriadoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('categoria')) {
      context.handle(
        _categoriaMeta,
        categoria.isAcceptableOrUnknown(data['categoria']!, _categoriaMeta),
      );
    } else if (isInserting) {
      context.missing(_categoriaMeta);
    }
    if (data.containsKey('subdivision_codes')) {
      context.handle(
        _subdivisionCodesMeta,
        subdivisionCodes.isAcceptableOrUnknown(
          data['subdivision_codes']!,
          _subdivisionCodesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_subdivisionCodesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FeriadoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FeriadoData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      nome:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}nome'],
          )!,
      data:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}data'],
          )!,
      categoria:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}categoria'],
          )!,
      subdivisionCodes:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}subdivision_codes'],
          )!,
    );
  }

  @override
  $FeriadoTable createAlias(String alias) {
    return $FeriadoTable(attachedDatabase, alias);
  }
}

class FeriadoData extends DataClass implements Insertable<FeriadoData> {
  final int id;
  final String nome;
  final DateTime data;
  final String categoria;
  final String subdivisionCodes;
  const FeriadoData({
    required this.id,
    required this.nome,
    required this.data,
    required this.categoria,
    required this.subdivisionCodes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['data'] = Variable<DateTime>(data);
    map['categoria'] = Variable<String>(categoria);
    map['subdivision_codes'] = Variable<String>(subdivisionCodes);
    return map;
  }

  FeriadoCompanion toCompanion(bool nullToAbsent) {
    return FeriadoCompanion(
      id: Value(id),
      nome: Value(nome),
      data: Value(data),
      categoria: Value(categoria),
      subdivisionCodes: Value(subdivisionCodes),
    );
  }

  factory FeriadoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FeriadoData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      data: serializer.fromJson<DateTime>(json['data']),
      categoria: serializer.fromJson<String>(json['categoria']),
      subdivisionCodes: serializer.fromJson<String>(json['subdivisionCodes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'data': serializer.toJson<DateTime>(data),
      'categoria': serializer.toJson<String>(categoria),
      'subdivisionCodes': serializer.toJson<String>(subdivisionCodes),
    };
  }

  FeriadoData copyWith({
    int? id,
    String? nome,
    DateTime? data,
    String? categoria,
    String? subdivisionCodes,
  }) => FeriadoData(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    data: data ?? this.data,
    categoria: categoria ?? this.categoria,
    subdivisionCodes: subdivisionCodes ?? this.subdivisionCodes,
  );
  FeriadoData copyWithCompanion(FeriadoCompanion data) {
    return FeriadoData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      data: data.data.present ? data.data.value : this.data,
      categoria: data.categoria.present ? data.categoria.value : this.categoria,
      subdivisionCodes:
          data.subdivisionCodes.present
              ? data.subdivisionCodes.value
              : this.subdivisionCodes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FeriadoData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('data: $data, ')
          ..write('categoria: $categoria, ')
          ..write('subdivisionCodes: $subdivisionCodes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, data, categoria, subdivisionCodes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FeriadoData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.data == this.data &&
          other.categoria == this.categoria &&
          other.subdivisionCodes == this.subdivisionCodes);
}

class FeriadoCompanion extends UpdateCompanion<FeriadoData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<DateTime> data;
  final Value<String> categoria;
  final Value<String> subdivisionCodes;
  const FeriadoCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.data = const Value.absent(),
    this.categoria = const Value.absent(),
    this.subdivisionCodes = const Value.absent(),
  });
  FeriadoCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required DateTime data,
    required String categoria,
    required String subdivisionCodes,
  }) : nome = Value(nome),
       data = Value(data),
       categoria = Value(categoria),
       subdivisionCodes = Value(subdivisionCodes);
  static Insertable<FeriadoData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<DateTime>? data,
    Expression<String>? categoria,
    Expression<String>? subdivisionCodes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (data != null) 'data': data,
      if (categoria != null) 'categoria': categoria,
      if (subdivisionCodes != null) 'subdivision_codes': subdivisionCodes,
    });
  }

  FeriadoCompanion copyWith({
    Value<int>? id,
    Value<String>? nome,
    Value<DateTime>? data,
    Value<String>? categoria,
    Value<String>? subdivisionCodes,
  }) {
    return FeriadoCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      data: data ?? this.data,
      categoria: categoria ?? this.categoria,
      subdivisionCodes: subdivisionCodes ?? this.subdivisionCodes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (data.present) {
      map['data'] = Variable<DateTime>(data.value);
    }
    if (categoria.present) {
      map['categoria'] = Variable<String>(categoria.value);
    }
    if (subdivisionCodes.present) {
      map['subdivision_codes'] = Variable<String>(subdivisionCodes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FeriadoCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('data: $data, ')
          ..write('categoria: $categoria, ')
          ..write('subdivisionCodes: $subdivisionCodes')
          ..write(')'))
        .toString();
  }
}

class $HolidayPreferencesTable extends HolidayPreferences
    with TableInfo<$HolidayPreferencesTable, HolidayPreferencesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HolidayPreferencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _countriesMeta = const VerificationMeta(
    'countries',
  );
  @override
  late final GeneratedColumn<String> countries = GeneratedColumn<String>(
    'countries',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _regionsMeta = const VerificationMeta(
    'regions',
  );
  @override
  late final GeneratedColumn<String> regions = GeneratedColumn<String>(
    'regions',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _religionMeta = const VerificationMeta(
    'religion',
  );
  @override
  late final GeneratedColumn<String> religion = GeneratedColumn<String>(
    'religion',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, countries, regions, religion];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'holiday_preferences';
  @override
  VerificationContext validateIntegrity(
    Insertable<HolidayPreferencesData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('countries')) {
      context.handle(
        _countriesMeta,
        countries.isAcceptableOrUnknown(data['countries']!, _countriesMeta),
      );
    } else if (isInserting) {
      context.missing(_countriesMeta);
    }
    if (data.containsKey('regions')) {
      context.handle(
        _regionsMeta,
        regions.isAcceptableOrUnknown(data['regions']!, _regionsMeta),
      );
    } else if (isInserting) {
      context.missing(_regionsMeta);
    }
    if (data.containsKey('religion')) {
      context.handle(
        _religionMeta,
        religion.isAcceptableOrUnknown(data['religion']!, _religionMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HolidayPreferencesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HolidayPreferencesData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      countries:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}countries'],
          )!,
      regions:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}regions'],
          )!,
      religion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}religion'],
      ),
    );
  }

  @override
  $HolidayPreferencesTable createAlias(String alias) {
    return $HolidayPreferencesTable(attachedDatabase, alias);
  }
}

class HolidayPreferencesData extends DataClass
    implements Insertable<HolidayPreferencesData> {
  final int id;
  final String countries;
  final String regions;
  final String? religion;
  const HolidayPreferencesData({
    required this.id,
    required this.countries,
    required this.regions,
    this.religion,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['countries'] = Variable<String>(countries);
    map['regions'] = Variable<String>(regions);
    if (!nullToAbsent || religion != null) {
      map['religion'] = Variable<String>(religion);
    }
    return map;
  }

  HolidayPreferencesCompanion toCompanion(bool nullToAbsent) {
    return HolidayPreferencesCompanion(
      id: Value(id),
      countries: Value(countries),
      regions: Value(regions),
      religion:
          religion == null && nullToAbsent
              ? const Value.absent()
              : Value(religion),
    );
  }

  factory HolidayPreferencesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HolidayPreferencesData(
      id: serializer.fromJson<int>(json['id']),
      countries: serializer.fromJson<String>(json['countries']),
      regions: serializer.fromJson<String>(json['regions']),
      religion: serializer.fromJson<String?>(json['religion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'countries': serializer.toJson<String>(countries),
      'regions': serializer.toJson<String>(regions),
      'religion': serializer.toJson<String?>(religion),
    };
  }

  HolidayPreferencesData copyWith({
    int? id,
    String? countries,
    String? regions,
    Value<String?> religion = const Value.absent(),
  }) => HolidayPreferencesData(
    id: id ?? this.id,
    countries: countries ?? this.countries,
    regions: regions ?? this.regions,
    religion: religion.present ? religion.value : this.religion,
  );
  HolidayPreferencesData copyWithCompanion(HolidayPreferencesCompanion data) {
    return HolidayPreferencesData(
      id: data.id.present ? data.id.value : this.id,
      countries: data.countries.present ? data.countries.value : this.countries,
      regions: data.regions.present ? data.regions.value : this.regions,
      religion: data.religion.present ? data.religion.value : this.religion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HolidayPreferencesData(')
          ..write('id: $id, ')
          ..write('countries: $countries, ')
          ..write('regions: $regions, ')
          ..write('religion: $religion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, countries, regions, religion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HolidayPreferencesData &&
          other.id == this.id &&
          other.countries == this.countries &&
          other.regions == this.regions &&
          other.religion == this.religion);
}

class HolidayPreferencesCompanion
    extends UpdateCompanion<HolidayPreferencesData> {
  final Value<int> id;
  final Value<String> countries;
  final Value<String> regions;
  final Value<String?> religion;
  const HolidayPreferencesCompanion({
    this.id = const Value.absent(),
    this.countries = const Value.absent(),
    this.regions = const Value.absent(),
    this.religion = const Value.absent(),
  });
  HolidayPreferencesCompanion.insert({
    this.id = const Value.absent(),
    required String countries,
    required String regions,
    this.religion = const Value.absent(),
  }) : countries = Value(countries),
       regions = Value(regions);
  static Insertable<HolidayPreferencesData> custom({
    Expression<int>? id,
    Expression<String>? countries,
    Expression<String>? regions,
    Expression<String>? religion,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (countries != null) 'countries': countries,
      if (regions != null) 'regions': regions,
      if (religion != null) 'religion': religion,
    });
  }

  HolidayPreferencesCompanion copyWith({
    Value<int>? id,
    Value<String>? countries,
    Value<String>? regions,
    Value<String?>? religion,
  }) {
    return HolidayPreferencesCompanion(
      id: id ?? this.id,
      countries: countries ?? this.countries,
      regions: regions ?? this.regions,
      religion: religion ?? this.religion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (countries.present) {
      map['countries'] = Variable<String>(countries.value);
    }
    if (regions.present) {
      map['regions'] = Variable<String>(regions.value);
    }
    if (religion.present) {
      map['religion'] = Variable<String>(religion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HolidayPreferencesCompanion(')
          ..write('id: $id, ')
          ..write('countries: $countries, ')
          ..write('regions: $regions, ')
          ..write('religion: $religion')
          ..write(')'))
        .toString();
  }
}

class $FeriadoToggleTable extends FeriadoToggle
    with TableInfo<$FeriadoToggleTable, FeriadoToggleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FeriadoToggleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _feriadoIdMeta = const VerificationMeta(
    'feriadoId',
  );
  @override
  late final GeneratedColumn<int> feriadoId = GeneratedColumn<int>(
    'feriado_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES feriado (id)',
    ),
  );
  static const VerificationMeta _preferenceIdMeta = const VerificationMeta(
    'preferenceId',
  );
  @override
  late final GeneratedColumn<int> preferenceId = GeneratedColumn<int>(
    'preference_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES holiday_preferences (id)',
    ),
  );
  static const VerificationMeta _isEnabledMeta = const VerificationMeta(
    'isEnabled',
  );
  @override
  late final GeneratedColumn<bool> isEnabled = GeneratedColumn<bool>(
    'is_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [feriadoId, preferenceId, isEnabled];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'feriado_toggle';
  @override
  VerificationContext validateIntegrity(
    Insertable<FeriadoToggleData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('feriado_id')) {
      context.handle(
        _feriadoIdMeta,
        feriadoId.isAcceptableOrUnknown(data['feriado_id']!, _feriadoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_feriadoIdMeta);
    }
    if (data.containsKey('preference_id')) {
      context.handle(
        _preferenceIdMeta,
        preferenceId.isAcceptableOrUnknown(
          data['preference_id']!,
          _preferenceIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_preferenceIdMeta);
    }
    if (data.containsKey('is_enabled')) {
      context.handle(
        _isEnabledMeta,
        isEnabled.isAcceptableOrUnknown(data['is_enabled']!, _isEnabledMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {feriadoId, preferenceId};
  @override
  FeriadoToggleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FeriadoToggleData(
      feriadoId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}feriado_id'],
          )!,
      preferenceId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}preference_id'],
          )!,
      isEnabled:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_enabled'],
          )!,
    );
  }

  @override
  $FeriadoToggleTable createAlias(String alias) {
    return $FeriadoToggleTable(attachedDatabase, alias);
  }
}

class FeriadoToggleData extends DataClass
    implements Insertable<FeriadoToggleData> {
  /// Referência ao feriado na tabela principal
  final int feriadoId;

  /// Referência ao perfil de preferência
  final int preferenceId;

  /// Estado de habilitado/desabilitado
  final bool isEnabled;
  const FeriadoToggleData({
    required this.feriadoId,
    required this.preferenceId,
    required this.isEnabled,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['feriado_id'] = Variable<int>(feriadoId);
    map['preference_id'] = Variable<int>(preferenceId);
    map['is_enabled'] = Variable<bool>(isEnabled);
    return map;
  }

  FeriadoToggleCompanion toCompanion(bool nullToAbsent) {
    return FeriadoToggleCompanion(
      feriadoId: Value(feriadoId),
      preferenceId: Value(preferenceId),
      isEnabled: Value(isEnabled),
    );
  }

  factory FeriadoToggleData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FeriadoToggleData(
      feriadoId: serializer.fromJson<int>(json['feriadoId']),
      preferenceId: serializer.fromJson<int>(json['preferenceId']),
      isEnabled: serializer.fromJson<bool>(json['isEnabled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'feriadoId': serializer.toJson<int>(feriadoId),
      'preferenceId': serializer.toJson<int>(preferenceId),
      'isEnabled': serializer.toJson<bool>(isEnabled),
    };
  }

  FeriadoToggleData copyWith({
    int? feriadoId,
    int? preferenceId,
    bool? isEnabled,
  }) => FeriadoToggleData(
    feriadoId: feriadoId ?? this.feriadoId,
    preferenceId: preferenceId ?? this.preferenceId,
    isEnabled: isEnabled ?? this.isEnabled,
  );
  FeriadoToggleData copyWithCompanion(FeriadoToggleCompanion data) {
    return FeriadoToggleData(
      feriadoId: data.feriadoId.present ? data.feriadoId.value : this.feriadoId,
      preferenceId:
          data.preferenceId.present
              ? data.preferenceId.value
              : this.preferenceId,
      isEnabled: data.isEnabled.present ? data.isEnabled.value : this.isEnabled,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FeriadoToggleData(')
          ..write('feriadoId: $feriadoId, ')
          ..write('preferenceId: $preferenceId, ')
          ..write('isEnabled: $isEnabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(feriadoId, preferenceId, isEnabled);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FeriadoToggleData &&
          other.feriadoId == this.feriadoId &&
          other.preferenceId == this.preferenceId &&
          other.isEnabled == this.isEnabled);
}

class FeriadoToggleCompanion extends UpdateCompanion<FeriadoToggleData> {
  final Value<int> feriadoId;
  final Value<int> preferenceId;
  final Value<bool> isEnabled;
  final Value<int> rowid;
  const FeriadoToggleCompanion({
    this.feriadoId = const Value.absent(),
    this.preferenceId = const Value.absent(),
    this.isEnabled = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FeriadoToggleCompanion.insert({
    required int feriadoId,
    required int preferenceId,
    this.isEnabled = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : feriadoId = Value(feriadoId),
       preferenceId = Value(preferenceId);
  static Insertable<FeriadoToggleData> custom({
    Expression<int>? feriadoId,
    Expression<int>? preferenceId,
    Expression<bool>? isEnabled,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (feriadoId != null) 'feriado_id': feriadoId,
      if (preferenceId != null) 'preference_id': preferenceId,
      if (isEnabled != null) 'is_enabled': isEnabled,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FeriadoToggleCompanion copyWith({
    Value<int>? feriadoId,
    Value<int>? preferenceId,
    Value<bool>? isEnabled,
    Value<int>? rowid,
  }) {
    return FeriadoToggleCompanion(
      feriadoId: feriadoId ?? this.feriadoId,
      preferenceId: preferenceId ?? this.preferenceId,
      isEnabled: isEnabled ?? this.isEnabled,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (feriadoId.present) {
      map['feriado_id'] = Variable<int>(feriadoId.value);
    }
    if (preferenceId.present) {
      map['preference_id'] = Variable<int>(preferenceId.value);
    }
    if (isEnabled.present) {
      map['is_enabled'] = Variable<bool>(isEnabled.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FeriadoToggleCompanion(')
          ..write('feriadoId: $feriadoId, ')
          ..write('preferenceId: $preferenceId, ')
          ..write('isEnabled: $isEnabled, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FeriadoTable feriado = $FeriadoTable(this);
  late final $HolidayPreferencesTable holidayPreferences =
      $HolidayPreferencesTable(this);
  late final $FeriadoToggleTable feriadoToggle = $FeriadoToggleTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    feriado,
    holidayPreferences,
    feriadoToggle,
  ];
}

typedef $$FeriadoTableCreateCompanionBuilder =
    FeriadoCompanion Function({
      Value<int> id,
      required String nome,
      required DateTime data,
      required String categoria,
      required String subdivisionCodes,
    });
typedef $$FeriadoTableUpdateCompanionBuilder =
    FeriadoCompanion Function({
      Value<int> id,
      Value<String> nome,
      Value<DateTime> data,
      Value<String> categoria,
      Value<String> subdivisionCodes,
    });

final class $$FeriadoTableReferences
    extends BaseReferences<_$AppDatabase, $FeriadoTable, FeriadoData> {
  $$FeriadoTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$FeriadoToggleTable, List<FeriadoToggleData>>
  _feriadoToggleRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.feriadoToggle,
    aliasName: $_aliasNameGenerator(db.feriado.id, db.feriadoToggle.feriadoId),
  );

  $$FeriadoToggleTableProcessedTableManager get feriadoToggleRefs {
    final manager = $$FeriadoToggleTableTableManager(
      $_db,
      $_db.feriadoToggle,
    ).filter((f) => f.feriadoId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_feriadoToggleRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$FeriadoTableFilterComposer
    extends Composer<_$AppDatabase, $FeriadoTable> {
  $$FeriadoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoria => $composableBuilder(
    column: $table.categoria,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subdivisionCodes => $composableBuilder(
    column: $table.subdivisionCodes,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> feriadoToggleRefs(
    Expression<bool> Function($$FeriadoToggleTableFilterComposer f) f,
  ) {
    final $$FeriadoToggleTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.feriadoToggle,
      getReferencedColumn: (t) => t.feriadoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FeriadoToggleTableFilterComposer(
            $db: $db,
            $table: $db.feriadoToggle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FeriadoTableOrderingComposer
    extends Composer<_$AppDatabase, $FeriadoTable> {
  $$FeriadoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoria => $composableBuilder(
    column: $table.categoria,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subdivisionCodes => $composableBuilder(
    column: $table.subdivisionCodes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FeriadoTableAnnotationComposer
    extends Composer<_$AppDatabase, $FeriadoTable> {
  $$FeriadoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<DateTime> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<String> get categoria =>
      $composableBuilder(column: $table.categoria, builder: (column) => column);

  GeneratedColumn<String> get subdivisionCodes => $composableBuilder(
    column: $table.subdivisionCodes,
    builder: (column) => column,
  );

  Expression<T> feriadoToggleRefs<T extends Object>(
    Expression<T> Function($$FeriadoToggleTableAnnotationComposer a) f,
  ) {
    final $$FeriadoToggleTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.feriadoToggle,
      getReferencedColumn: (t) => t.feriadoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FeriadoToggleTableAnnotationComposer(
            $db: $db,
            $table: $db.feriadoToggle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FeriadoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FeriadoTable,
          FeriadoData,
          $$FeriadoTableFilterComposer,
          $$FeriadoTableOrderingComposer,
          $$FeriadoTableAnnotationComposer,
          $$FeriadoTableCreateCompanionBuilder,
          $$FeriadoTableUpdateCompanionBuilder,
          (FeriadoData, $$FeriadoTableReferences),
          FeriadoData,
          PrefetchHooks Function({bool feriadoToggleRefs})
        > {
  $$FeriadoTableTableManager(_$AppDatabase db, $FeriadoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$FeriadoTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$FeriadoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$FeriadoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<DateTime> data = const Value.absent(),
                Value<String> categoria = const Value.absent(),
                Value<String> subdivisionCodes = const Value.absent(),
              }) => FeriadoCompanion(
                id: id,
                nome: nome,
                data: data,
                categoria: categoria,
                subdivisionCodes: subdivisionCodes,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nome,
                required DateTime data,
                required String categoria,
                required String subdivisionCodes,
              }) => FeriadoCompanion.insert(
                id: id,
                nome: nome,
                data: data,
                categoria: categoria,
                subdivisionCodes: subdivisionCodes,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$FeriadoTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({feriadoToggleRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (feriadoToggleRefs) db.feriadoToggle,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (feriadoToggleRefs)
                    await $_getPrefetchedData<
                      FeriadoData,
                      $FeriadoTable,
                      FeriadoToggleData
                    >(
                      currentTable: table,
                      referencedTable: $$FeriadoTableReferences
                          ._feriadoToggleRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$FeriadoTableReferences(
                                db,
                                table,
                                p0,
                              ).feriadoToggleRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.feriadoId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$FeriadoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FeriadoTable,
      FeriadoData,
      $$FeriadoTableFilterComposer,
      $$FeriadoTableOrderingComposer,
      $$FeriadoTableAnnotationComposer,
      $$FeriadoTableCreateCompanionBuilder,
      $$FeriadoTableUpdateCompanionBuilder,
      (FeriadoData, $$FeriadoTableReferences),
      FeriadoData,
      PrefetchHooks Function({bool feriadoToggleRefs})
    >;
typedef $$HolidayPreferencesTableCreateCompanionBuilder =
    HolidayPreferencesCompanion Function({
      Value<int> id,
      required String countries,
      required String regions,
      Value<String?> religion,
    });
typedef $$HolidayPreferencesTableUpdateCompanionBuilder =
    HolidayPreferencesCompanion Function({
      Value<int> id,
      Value<String> countries,
      Value<String> regions,
      Value<String?> religion,
    });

final class $$HolidayPreferencesTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $HolidayPreferencesTable,
          HolidayPreferencesData
        > {
  $$HolidayPreferencesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$FeriadoToggleTable, List<FeriadoToggleData>>
  _feriadoToggleRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.feriadoToggle,
    aliasName: $_aliasNameGenerator(
      db.holidayPreferences.id,
      db.feriadoToggle.preferenceId,
    ),
  );

  $$FeriadoToggleTableProcessedTableManager get feriadoToggleRefs {
    final manager = $$FeriadoToggleTableTableManager(
      $_db,
      $_db.feriadoToggle,
    ).filter((f) => f.preferenceId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_feriadoToggleRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$HolidayPreferencesTableFilterComposer
    extends Composer<_$AppDatabase, $HolidayPreferencesTable> {
  $$HolidayPreferencesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get countries => $composableBuilder(
    column: $table.countries,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get regions => $composableBuilder(
    column: $table.regions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get religion => $composableBuilder(
    column: $table.religion,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> feriadoToggleRefs(
    Expression<bool> Function($$FeriadoToggleTableFilterComposer f) f,
  ) {
    final $$FeriadoToggleTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.feriadoToggle,
      getReferencedColumn: (t) => t.preferenceId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FeriadoToggleTableFilterComposer(
            $db: $db,
            $table: $db.feriadoToggle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HolidayPreferencesTableOrderingComposer
    extends Composer<_$AppDatabase, $HolidayPreferencesTable> {
  $$HolidayPreferencesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get countries => $composableBuilder(
    column: $table.countries,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get regions => $composableBuilder(
    column: $table.regions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get religion => $composableBuilder(
    column: $table.religion,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HolidayPreferencesTableAnnotationComposer
    extends Composer<_$AppDatabase, $HolidayPreferencesTable> {
  $$HolidayPreferencesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get countries =>
      $composableBuilder(column: $table.countries, builder: (column) => column);

  GeneratedColumn<String> get regions =>
      $composableBuilder(column: $table.regions, builder: (column) => column);

  GeneratedColumn<String> get religion =>
      $composableBuilder(column: $table.religion, builder: (column) => column);

  Expression<T> feriadoToggleRefs<T extends Object>(
    Expression<T> Function($$FeriadoToggleTableAnnotationComposer a) f,
  ) {
    final $$FeriadoToggleTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.feriadoToggle,
      getReferencedColumn: (t) => t.preferenceId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FeriadoToggleTableAnnotationComposer(
            $db: $db,
            $table: $db.feriadoToggle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HolidayPreferencesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HolidayPreferencesTable,
          HolidayPreferencesData,
          $$HolidayPreferencesTableFilterComposer,
          $$HolidayPreferencesTableOrderingComposer,
          $$HolidayPreferencesTableAnnotationComposer,
          $$HolidayPreferencesTableCreateCompanionBuilder,
          $$HolidayPreferencesTableUpdateCompanionBuilder,
          (HolidayPreferencesData, $$HolidayPreferencesTableReferences),
          HolidayPreferencesData,
          PrefetchHooks Function({bool feriadoToggleRefs})
        > {
  $$HolidayPreferencesTableTableManager(
    _$AppDatabase db,
    $HolidayPreferencesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$HolidayPreferencesTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$HolidayPreferencesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$HolidayPreferencesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> countries = const Value.absent(),
                Value<String> regions = const Value.absent(),
                Value<String?> religion = const Value.absent(),
              }) => HolidayPreferencesCompanion(
                id: id,
                countries: countries,
                regions: regions,
                religion: religion,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String countries,
                required String regions,
                Value<String?> religion = const Value.absent(),
              }) => HolidayPreferencesCompanion.insert(
                id: id,
                countries: countries,
                regions: regions,
                religion: religion,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$HolidayPreferencesTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({feriadoToggleRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (feriadoToggleRefs) db.feriadoToggle,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (feriadoToggleRefs)
                    await $_getPrefetchedData<
                      HolidayPreferencesData,
                      $HolidayPreferencesTable,
                      FeriadoToggleData
                    >(
                      currentTable: table,
                      referencedTable: $$HolidayPreferencesTableReferences
                          ._feriadoToggleRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$HolidayPreferencesTableReferences(
                                db,
                                table,
                                p0,
                              ).feriadoToggleRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.preferenceId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$HolidayPreferencesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HolidayPreferencesTable,
      HolidayPreferencesData,
      $$HolidayPreferencesTableFilterComposer,
      $$HolidayPreferencesTableOrderingComposer,
      $$HolidayPreferencesTableAnnotationComposer,
      $$HolidayPreferencesTableCreateCompanionBuilder,
      $$HolidayPreferencesTableUpdateCompanionBuilder,
      (HolidayPreferencesData, $$HolidayPreferencesTableReferences),
      HolidayPreferencesData,
      PrefetchHooks Function({bool feriadoToggleRefs})
    >;
typedef $$FeriadoToggleTableCreateCompanionBuilder =
    FeriadoToggleCompanion Function({
      required int feriadoId,
      required int preferenceId,
      Value<bool> isEnabled,
      Value<int> rowid,
    });
typedef $$FeriadoToggleTableUpdateCompanionBuilder =
    FeriadoToggleCompanion Function({
      Value<int> feriadoId,
      Value<int> preferenceId,
      Value<bool> isEnabled,
      Value<int> rowid,
    });

final class $$FeriadoToggleTableReferences
    extends
        BaseReferences<_$AppDatabase, $FeriadoToggleTable, FeriadoToggleData> {
  $$FeriadoToggleTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $FeriadoTable _feriadoIdTable(_$AppDatabase db) =>
      db.feriado.createAlias(
        $_aliasNameGenerator(db.feriadoToggle.feriadoId, db.feriado.id),
      );

  $$FeriadoTableProcessedTableManager get feriadoId {
    final $_column = $_itemColumn<int>('feriado_id')!;

    final manager = $$FeriadoTableTableManager(
      $_db,
      $_db.feriado,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_feriadoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $HolidayPreferencesTable _preferenceIdTable(_$AppDatabase db) =>
      db.holidayPreferences.createAlias(
        $_aliasNameGenerator(
          db.feriadoToggle.preferenceId,
          db.holidayPreferences.id,
        ),
      );

  $$HolidayPreferencesTableProcessedTableManager get preferenceId {
    final $_column = $_itemColumn<int>('preference_id')!;

    final manager = $$HolidayPreferencesTableTableManager(
      $_db,
      $_db.holidayPreferences,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_preferenceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FeriadoToggleTableFilterComposer
    extends Composer<_$AppDatabase, $FeriadoToggleTable> {
  $$FeriadoToggleTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isEnabled => $composableBuilder(
    column: $table.isEnabled,
    builder: (column) => ColumnFilters(column),
  );

  $$FeriadoTableFilterComposer get feriadoId {
    final $$FeriadoTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.feriadoId,
      referencedTable: $db.feriado,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FeriadoTableFilterComposer(
            $db: $db,
            $table: $db.feriado,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$HolidayPreferencesTableFilterComposer get preferenceId {
    final $$HolidayPreferencesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.preferenceId,
      referencedTable: $db.holidayPreferences,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HolidayPreferencesTableFilterComposer(
            $db: $db,
            $table: $db.holidayPreferences,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FeriadoToggleTableOrderingComposer
    extends Composer<_$AppDatabase, $FeriadoToggleTable> {
  $$FeriadoToggleTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isEnabled => $composableBuilder(
    column: $table.isEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  $$FeriadoTableOrderingComposer get feriadoId {
    final $$FeriadoTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.feriadoId,
      referencedTable: $db.feriado,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FeriadoTableOrderingComposer(
            $db: $db,
            $table: $db.feriado,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$HolidayPreferencesTableOrderingComposer get preferenceId {
    final $$HolidayPreferencesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.preferenceId,
      referencedTable: $db.holidayPreferences,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HolidayPreferencesTableOrderingComposer(
            $db: $db,
            $table: $db.holidayPreferences,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FeriadoToggleTableAnnotationComposer
    extends Composer<_$AppDatabase, $FeriadoToggleTable> {
  $$FeriadoToggleTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isEnabled =>
      $composableBuilder(column: $table.isEnabled, builder: (column) => column);

  $$FeriadoTableAnnotationComposer get feriadoId {
    final $$FeriadoTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.feriadoId,
      referencedTable: $db.feriado,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FeriadoTableAnnotationComposer(
            $db: $db,
            $table: $db.feriado,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$HolidayPreferencesTableAnnotationComposer get preferenceId {
    final $$HolidayPreferencesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.preferenceId,
          referencedTable: $db.holidayPreferences,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$HolidayPreferencesTableAnnotationComposer(
                $db: $db,
                $table: $db.holidayPreferences,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$FeriadoToggleTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FeriadoToggleTable,
          FeriadoToggleData,
          $$FeriadoToggleTableFilterComposer,
          $$FeriadoToggleTableOrderingComposer,
          $$FeriadoToggleTableAnnotationComposer,
          $$FeriadoToggleTableCreateCompanionBuilder,
          $$FeriadoToggleTableUpdateCompanionBuilder,
          (FeriadoToggleData, $$FeriadoToggleTableReferences),
          FeriadoToggleData,
          PrefetchHooks Function({bool feriadoId, bool preferenceId})
        > {
  $$FeriadoToggleTableTableManager(_$AppDatabase db, $FeriadoToggleTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$FeriadoToggleTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$FeriadoToggleTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$FeriadoToggleTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> feriadoId = const Value.absent(),
                Value<int> preferenceId = const Value.absent(),
                Value<bool> isEnabled = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FeriadoToggleCompanion(
                feriadoId: feriadoId,
                preferenceId: preferenceId,
                isEnabled: isEnabled,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int feriadoId,
                required int preferenceId,
                Value<bool> isEnabled = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FeriadoToggleCompanion.insert(
                feriadoId: feriadoId,
                preferenceId: preferenceId,
                isEnabled: isEnabled,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$FeriadoToggleTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({feriadoId = false, preferenceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (feriadoId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.feriadoId,
                            referencedTable: $$FeriadoToggleTableReferences
                                ._feriadoIdTable(db),
                            referencedColumn:
                                $$FeriadoToggleTableReferences
                                    ._feriadoIdTable(db)
                                    .id,
                          )
                          as T;
                }
                if (preferenceId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.preferenceId,
                            referencedTable: $$FeriadoToggleTableReferences
                                ._preferenceIdTable(db),
                            referencedColumn:
                                $$FeriadoToggleTableReferences
                                    ._preferenceIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FeriadoToggleTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FeriadoToggleTable,
      FeriadoToggleData,
      $$FeriadoToggleTableFilterComposer,
      $$FeriadoToggleTableOrderingComposer,
      $$FeriadoToggleTableAnnotationComposer,
      $$FeriadoToggleTableCreateCompanionBuilder,
      $$FeriadoToggleTableUpdateCompanionBuilder,
      (FeriadoToggleData, $$FeriadoToggleTableReferences),
      FeriadoToggleData,
      PrefetchHooks Function({bool feriadoId, bool preferenceId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FeriadoTableTableManager get feriado =>
      $$FeriadoTableTableManager(_db, _db.feriado);
  $$HolidayPreferencesTableTableManager get holidayPreferences =>
      $$HolidayPreferencesTableTableManager(_db, _db.holidayPreferences);
  $$FeriadoToggleTableTableManager get feriadoToggle =>
      $$FeriadoToggleTableTableManager(_db, _db.feriadoToggle);
}
