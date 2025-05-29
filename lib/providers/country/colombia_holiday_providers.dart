// lib/providers/country/colombia_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos da Colômbia para o ano informado
class ColombiaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_colombia_holiday_providers_0"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "International Workers' Day",
        localName: TranslationService.instance.tr("providers_country_colombia_holiday_providers_3"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 20),
        englishName: "Declaration of Independence",
        localName: TranslationService.instance.tr("providers_country_colombia_holiday_providers_8"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 7),
        englishName: "Battle of Boyacá",
        localName: TranslationService.instance.tr("providers_country_colombia_holiday_providers_9"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 12),
        englishName: "Columbus Day",
        localName: TranslationService.instance.tr("providers_country_colombia_holiday_providers_11"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 11),
        englishName: "Independence of Cartagena",
        localName: TranslationService.instance.tr("providers_country_colombia_holiday_providers_13"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public],
      ),
      // Semana Santa
      CatholicHolidayProvider.maundyThursday(year), // feriado religioso
      CatholicHolidayProvider.goodFriday(year),     // feriado religioso
      CatholicHolidayProvider.epiphany(year),      // feriado religioso
      CatholicHolidayProvider.saintJosephDay(year),     // feriado religioso
      CatholicHolidayProvider.assumptionDay(year),     // feriado religioso
      CatholicHolidayProvider.ascensionDay(year),     // feriado religioso
      CatholicHolidayProvider.corpusChristi(year),           // feriado religioso
      CatholicHolidayProvider.sacredHeart(year),           // feriado religioso
      CatholicHolidayProvider.saintPeterSaintPaul(year),                 // feriado religioso
      CatholicHolidayProvider.assumptionDay(year),                 // feriado religioso
      CatholicHolidayProvider.allSaintsDay(year),                 // feriado religioso
      CatholicHolidayProvider.immaculateConceptionDay(year),                 // feriado religioso
      CatholicHolidayProvider.christmasDay(year),                 // feriado religioso
    ];
  }
}
