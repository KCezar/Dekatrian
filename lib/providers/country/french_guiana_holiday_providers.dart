// lib/providers/country/french_guiana_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos da Guiana Francesa para o ano informado
class FrenchGuianaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_french_guiana_holiday_providers_0"),
        subdivisionCodes: ['GF'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_french_guiana_holiday_providers_1"),
        subdivisionCodes: ['GF'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 8),
        englishName: "Victory in Europe Day",
        localName: TranslationService.instance.tr("providers_country_french_guiana_holiday_providers_2"),
        subdivisionCodes: ['GF'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 14),
        englishName: "Bastille Day",
        localName: TranslationService.instance.tr("providers_country_french_guiana_holiday_providers_5"),
        subdivisionCodes: ['GF'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 11),
        englishName: "Armistice Day",
        localName: TranslationService.instance.tr("providers_country_french_guiana_holiday_providers_8"),
        subdivisionCodes: ['GF'],
        holidayTypes: [HolidayType.Public],
      ),
      CatholicHolidayProvider.easterSundayHoliday(year), // Domingo de Páscoa
      CatholicHolidayProvider.ascensionDay(year), // Domingo de Páscoa
      CatholicHolidayProvider.pentecost(year), // Domingo de Páscoa
      CatholicHolidayProvider.assumptionDay(year), // Domingo de Páscoa
      CatholicHolidayProvider.allSaintsDay(year), // Domingo de Páscoa
      CatholicHolidayProvider.christmasDay(year), // Domingo de Páscoa
    ];
  }
}