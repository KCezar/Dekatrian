import '/domain/models/holiday_type.dart';
import '/domain/models/holiday_specification.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos do Uruguai para o ano informado
class UruguayHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    final easterSunday = CatholicHolidayProvider.easterSunday(year);
    final holidays = <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_0"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 1, 6),
        englishName: "Children's Day",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_1"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 4, 19),
        englishName: "Landing of the 33 Patriots Day",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_2"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "International Workers' Day",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_3"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 18),
        englishName: "Battle of Las Piedras",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_4"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 6, 19),
        englishName: "Birthday of José Gervasio Artigas and Never Again Day",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_5"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 18),
        englishName: "Constitution Day",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_6"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 25),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_7"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 12),
        englishName: "Day of the Race",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_8"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      // Carnaval pré-Páscoa
      HolidaySpecification(
        date: easterSunday.subtract(Duration(days: 48)),
        englishName: "Carnival",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_11"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: easterSunday.subtract(Duration(days: 47)),
        englishName: "Carnival",
        localName: TranslationService.instance.tr("providers_country_uruguay_holiday_providers_12"),
        subdivisionCodes: ['UY'],
        holidayTypes: [HolidayType.Public],
      ),
      CatholicHolidayProvider.maundyThursday(year), // feriado religioso
      CatholicHolidayProvider.goodFriday(year),     // feriado religioso
      CatholicHolidayProvider.allSoulsDay(year),     // feriado religioso
      CatholicHolidayProvider.christmasDay(year),     // feriado religioso
    ];
    return holidays;
  }
}