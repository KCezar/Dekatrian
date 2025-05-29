import '/domain/models/holiday_type.dart';
import '/domain/models/holiday_specification.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider that returns a list of Brazilian holidays for a given year
class BrazilHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    final easterSunday = CatholicHolidayProvider.easterSunday(year);
    final holidays = <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_0"),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 4, 21),
        englishName: "Tiradentes",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_1"),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_2"),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 9),
        englishName: "Constitutionalist Revolution of 1932",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_3"),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR-SP'],
      ),
      HolidaySpecification(
        date: DateTime(year, 9, 7),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_4"),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 15),
        englishName: "Republic Proclamation Day",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_5"),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: easterSunday.add(Duration(days: -47)),
        englishName: "Carnival",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_6"),
        holidayTypes: [HolidayType.Bank, HolidayType.Optional],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: easterSunday.add(Duration(days: -48)),
        englishName: "Carnival",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_7"),
        holidayTypes: [HolidayType.Bank, HolidayType.Optional],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: easterSunday.add(Duration(days: 8)),
        englishName: "Anniversary of the Espírito Santo",
        localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_8"),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR-ES'],
      ),
      CatholicHolidayProvider.ourLadyAparecida(year),
      CatholicHolidayProvider.allSoulsDay(year),
      CatholicHolidayProvider.easterSundayHoliday(year), 
      CatholicHolidayProvider.goodFriday(year),
      CatholicHolidayProvider.corpusChristi(year),
      CatholicHolidayProvider.christmasDay(year),
    ];

    if (year >= 2024) {
      holidays.add(
        HolidaySpecification(
          date: DateTime(year, 11, 20),
          englishName: "Black Awareness Day",
          localName: TranslationService.instance.tr("providers_country_brazil_holiday_providers_9"),
          holidayTypes: [HolidayType.Public],
          subdivisionCodes: ['BR'],
        ),
      );
    }

    return holidays;
  }
}