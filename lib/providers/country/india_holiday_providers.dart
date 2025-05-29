// lib/providers/country/india_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados nacionais da Índia para o ano informado
class IndiaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 26),
        englishName: "Republic Day",
        localName: TranslationService.instance.tr("providers_country_india_holiday_providers_0"),
        subdivisionCodes: ['IN'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 4, 14),
        englishName: "Ambedkar Jayanti",
        localName: TranslationService.instance.tr("providers_country_india_holiday_providers_1"),
        subdivisionCodes: ['IN'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 15),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_india_holiday_providers_2"),
        subdivisionCodes: ['IN'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 2),
        englishName: "Gandhi Jayanti",
        localName: TranslationService.instance.tr("providers_country_india_holiday_providers_3"),
        subdivisionCodes: ['IN'],
        holidayTypes: [HolidayType.Public],
      ),
    ];
  }
}