// lib/providers/country/suriname_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos do Suriname para o ano informado
class SurinameHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_0"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        // data móvel: Chinese New Year
        date: /* TODO: calcular Chinese New Year */ DateTime(year, 2, 1),
        englishName: "Chinese New Year",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_1"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        // data móvel: Phagwah (Holi Phagwa)
        date: /* TODO: calcular Phagwah */ DateTime(year, 3, 1),
        englishName: "Phagwah (Holi Phagwa)",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_2"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        // data móvel: Eid al-Fitr
        date: /* TODO: calcular Eid al-Fitr */ DateTime(year, 4, 10),
        englishName: "Eid al-Fitr",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_3"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_4"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        // data móvel: Eid al-Adha
        date: /* TODO: calcular Eid al-Adha */ DateTime(year, 6, 16),
        englishName: "Eid al-Adha",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_5"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 1),
        englishName: "Emancipation Day (Ketikoti)",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_6"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 9),
        englishName: "Indigenous People's Day",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_7"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 10),
        englishName: "Day of the Maroons",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_8"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        // data móvel: Diwali
        date: /* TODO: calcular Diwali */ DateTime(year, 10, 21),
        englishName: "Diwali",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_9"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 25),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_10"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 12, 26),
        englishName: "Boxing Day",
        localName: TranslationService.instance.tr("providers_country_suriname_holiday_providers_12"),
        subdivisionCodes: ['SR'],
        holidayTypes: [HolidayType.Public],
      ),
      // Semana Santa
      CatholicHolidayProvider.goodFriday(year),    // feriado religioso
      CatholicHolidayProvider.easterSundayHoliday(year), // feriado religioso
      CatholicHolidayProvider.easterMonday(year),  // feriado religioso
      CatholicHolidayProvider.christmasDay(year),  // feriado religioso
    ];
  }
}
