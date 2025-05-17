import '/domain/models/holiday_specification.dart';

/// Configuração de cada religião
class ReligionConfig {
  final String code;  // ex: 'catholic'
  final String name;  // ex: 'Católico'
  final List<HolidaySpecification> Function(int year) getAllHolidays;

  ReligionConfig({
    required this.code,
    required this.name,
    required this.getAllHolidays,
  });
}