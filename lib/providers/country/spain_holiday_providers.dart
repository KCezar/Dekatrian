import '/domain/models/holiday_type.dart';
import '/domain/models/holiday_specification.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos da Espanha para o ano informado
class SpainHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    final holidays = <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_spain_holiday_providers_1"),
        subdivisionCodes: ['ES'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 12),
        englishName: "National Day",
        localName: TranslationService.instance.tr("providers_country_spain_holiday_providers_2"),
        subdivisionCodes: ['ES'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 12, 6),
        englishName: "Constitution Day",
        localName: TranslationService.instance.tr("providers_country_spain_holiday_providers_4"),
        subdivisionCodes: ['ES'],
        holidayTypes: [HolidayType.Public],
      ),
      // feriados móveis de Páscoa / Corpus Christi etc.
      CatholicHolidayProvider.goodFriday(year),    // feriado religioso
      CatholicHolidayProvider.easterMonday(year),  // feriado religioso
      CatholicHolidayProvider.corpusChristi(year), // feriado religioso
      CatholicHolidayProvider.epiphany(year), // feriado religioso
      CatholicHolidayProvider.allSaintsDay(year), // feriado religioso
    ];
    return holidays;
  }
}
