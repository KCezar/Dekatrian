// lib/providers/country/guyana_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos da Guiana para o ano informado
class GuyanaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    // Cálculo da 1ª segunda-feira de julho para CARICOM Day
    final firstMondayOfJuly = () {
      final date = DateTime(year, 7, 1);
      final offset = (DateTime.monday - date.weekday + 7) % 7;
      return date.add(Duration(days: offset));
    }();

    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_0"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 2, 23),
        englishName: "Republic Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_1"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      // Phagwah / Holi (data móvel)
      HolidaySpecification(
        date: /* TODO: calcular data de Phagwah */ DateTime(year, 3, 1),
        englishName: "Phagwah",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_2"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_5"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 5),
        englishName: "Arrival Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_6"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 26),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_7"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: firstMondayOfJuly,
        englishName: "CARICOM Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_8"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 1),
        englishName: "Emancipation Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_9"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      // Diwali / Deepavali (data móvel)
      HolidaySpecification(
        date: /* TODO: calcular data de Deepavali */ DateTime(year, 10, 20),
        englishName: "Deepavali",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_10"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        date: DateTime(year, 12, 26),
        englishName: "Boxing Day",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_12"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public],
      ),
      // Youman-Nabi (data móvel islâmica)
      HolidaySpecification(
        date: /* TODO: calcular data de Youman-Nabi */ DateTime(year, 1, 1),
        englishName: "Youman-Nabi",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_13"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      // Eid-ul-Adha (data móvel islâmica)
      HolidaySpecification(
        date: /* TODO: calcular data de Eid-ul-Adha */ DateTime(year, 1, 1),
        englishName: "Eid-ul-Adha",
        localName: TranslationService.instance.tr("providers_country_guyana_holiday_providers_14"),
        subdivisionCodes: ['GY'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      // Semana Santa
      CatholicHolidayProvider.goodFriday(year),   // feriado religioso
      CatholicHolidayProvider.easterMonday(year), // feriado religioso
      CatholicHolidayProvider.christmasDay(year), // feriado religioso
    ];
  }
}