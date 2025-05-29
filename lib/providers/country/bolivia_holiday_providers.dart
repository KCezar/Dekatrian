import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos da Bolívia para o ano informado
class BoliviaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    final easterSunday = CatholicHolidayProvider.easterSunday(year);

    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_bolivia_holiday_providers_0"),
        subdivisionCodes: ['BO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 1, 22),
        englishName: "Plurinational State Foundation Day",
        localName: TranslationService.instance.tr("providers_country_bolivia_holiday_providers_1"),
        subdivisionCodes: ['BO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: easterSunday.subtract(Duration(days: 48)),
        englishName: "Carnival Monday",
        localName: TranslationService.instance.tr("providers_country_bolivia_holiday_providers_2"),
        subdivisionCodes: ['BO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: easterSunday.subtract(Duration(days: 47)),
        englishName: "Carnival Tuesday",
        localName: TranslationService.instance.tr("providers_country_bolivia_holiday_providers_3"),
        subdivisionCodes: ['BO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_bolivia_holiday_providers_4"),
        subdivisionCodes: ['BO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 6, 21),
        englishName: "Aymara New Year",
        localName: TranslationService.instance.tr("providers_country_bolivia_holiday_providers_5"),
        subdivisionCodes: ['BO'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 6),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_bolivia_holiday_providers_6"),
        subdivisionCodes: ['BO'],
        holidayTypes: [HolidayType.Public],
      ),
      // Sexta-feira Santa
      CatholicHolidayProvider.goodFriday(year),      // feriado religioso
      // Corpus Christi
      CatholicHolidayProvider.corpusChristi(year),   // feriado religioso
      CatholicHolidayProvider.allSoulsDay(year),
      CatholicHolidayProvider.christmasDay(year),

    ];
  }
}