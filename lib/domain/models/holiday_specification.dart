import '/domain/models/holiday_type.dart';

class HolidaySpecification {
  final DateTime date;
  final String englishName;
  final String localName;
  final List<HolidayType> holidayTypes;
  final List<String>? subdivisionCodes;

  HolidaySpecification({
    required this.date,
    required this.englishName,
    required this.localName,
    required this.holidayTypes,
    this.subdivisionCodes,
  });
}