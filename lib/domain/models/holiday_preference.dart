/// Modelo que representa as preferências de feriados salvas pelo usuário
class HolidayPreference {
  /// Identificador único da preferência (pode ser o primary key no banco)
  final int id;

  /// Lista de códigos de países selecionados (ex: ['BR', 'AR'])
  final List<String> countries;

  /// Lista de códigos de subdivisões/regions selecionadas (ex: ['BR-SP', 'BR-RJ'])
  final List<String> regions;

  /// Código da religião selecionada, ou null se nenhuma
  final String? religion;

  HolidayPreference({
    required this.id,
    required this.countries,
    required this.regions,
    this.religion,
  });

  /// Constrói uma instância a partir de dados brutos (ex.: retorno do Drift)
  factory HolidayPreference.fromData(
    int id,
    String countriesCsv,
    String regionsCsv,
    String? religionCsv,
  ) {
    return HolidayPreference(
      id: id,
      countries: countriesCsv.isEmpty
          ? []
          : countriesCsv.split(',').map((s) => s.trim()).toList(),
      regions: regionsCsv.isEmpty
          ? []
          : regionsCsv.split(',').map((s) => s.trim()).toList(),
      religion: (religionCsv == null || religionCsv.isEmpty)
          ? null
          : religionCsv,
    );
  }

  /// Converte o modelo em CSV para armazenar no banco
  String get countriesCsv => countries.join(',');
  String get regionsCsv => regions.join(',');
  String get religionCsv => religion ?? '';

  /// Retorna um novo objeto atualizado
  HolidayPreference copyWith({
    List<String>? countries,
    List<String>? regions,
    String? religion,
  }) {
    return HolidayPreference(
      id: id,
      countries: countries ?? this.countries,
      regions: regions ?? this.regions,
      religion: religion ?? this.religion,
    );
  }
}
