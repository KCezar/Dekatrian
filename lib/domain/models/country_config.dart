import '/domain/models/holiday_specification.dart';
import '/domain/models/subdivision.dart';

class CountryConfig {
  final String code; // ex: 'BR'
  final String name; // ex: 'Brasil'
  final List<Subdivision> Function() getSubdivisions;
  final List<HolidaySpecification> Function(int year) getHolidays;

  CountryConfig({
    required this.code,
    required this.name,
    required this.getSubdivisions,
    required this.getHolidays,
  });
}