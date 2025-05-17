import '/domain/models/holiday_type.dart';
import '/domain/models/holiday_specification.dart';
import '/providers/religion/catholic_providers.dart';

/// Provider that returns a list of Brazilian holidays for a given year
class BrazilHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    final easterSunday = CatholicHolidayProvider.easterSunday(year);
    final holidays = <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: "Confraternização Universal",
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 4, 21),
        englishName: "Tiradentes",
        localName: "Dia de Tiradentes",
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: "Dia do Trabalhador",
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 9),
        englishName: "Constitutionalist Revolution of 1932",
        localName: "Revolução Constitucionalista de 1932",
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR-SP'],
      ),
      HolidaySpecification(
        date: DateTime(year, 9, 7),
        englishName: "Independence Day",
        localName: "Dia da Independência",
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 15),
        englishName: "Republic Proclamation Day",
        localName: "Proclamação da República",
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: easterSunday.add(Duration(days: -47)),
        englishName: "Carnival",
        localName: "Carnaval",
        holidayTypes: [HolidayType.Bank, HolidayType.Optional],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: easterSunday.add(Duration(days: -48)),
        englishName: "Carnival",
        localName: "Carnaval",
        holidayTypes: [HolidayType.Bank, HolidayType.Optional],
        subdivisionCodes: ['BR'],
      ),
      HolidaySpecification(
        date: easterSunday.add(Duration(days: 8)),
        englishName: "Anniversary of the Espírito Santo",
        localName: "Aniversário do Espírito Santo",
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
          localName: "Dia da Consciência Negra",
          holidayTypes: [HolidayType.Public],
          subdivisionCodes: ['BR'],
        ),
      );
    }

    return holidays;
  }
}