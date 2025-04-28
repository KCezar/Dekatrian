// lib/domain/models/lunar_date.dart

/// Modelo puro que representa uma data lunar
/// Possui getter para obter o nome do mês a partir de uma paleta fixa de 13 nomes.
class LunarDate {
  final int day;
  final int monthIndex;
  final int year;

  LunarDate({
    required this.day,
    required this.monthIndex,
    required this.year,
  });

  LunarDate copyWith({int? day, int? monthIndex, int? year}) {
    return LunarDate(
      day: day ?? this.day,
      monthIndex: monthIndex ?? this.monthIndex,
      year: year ?? this.year,
    );
  }

  /// Lista com os 13 nomes dos meses do calendário lunar
  static const List<String> _lunarMonthNames = [
    'Auroran', 'Borean', 'Coronian', 'Driadan', 'Electran',
    'Faian', 'Gaian', 'Hermetian', 'Irisian', 'Kaosian',
    'Lunan', 'Maian', 'Nixian',
  ];

  /// Getter para obter a lista de nomes dos meses lunares
  static List<String> get lunarMonthNames => List.unmodifiable(_lunarMonthNames);

  /// Nome do mês lunar conforme o índice
  String get lunarMonthName {
    if (monthIndex < 0 || monthIndex >= _lunarMonthNames.length) {
      return 'Feriado';
    }
    return _lunarMonthNames[monthIndex];
  }

  @override
  String toString() =>
      'LunarDate(day: \$day, month: \$lunarMonthName, year: \$year)';
}
