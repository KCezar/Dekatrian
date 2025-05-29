// lib/providers/country/paraguay_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos do Paraguai para o ano informado
class ParaguayHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_0"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 3, 1),
        englishName: "Heroes' Day",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_1"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_2"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 14),
        englishName: "Paraguayan Independence",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_3"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 15),
        englishName: "Paraguayan Independence",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_4"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 6, 12),
        englishName: "Chaco Armistice",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_5"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 15),
        englishName: "Founding of Asunción",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_6"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 9, 29),
        englishName: "Boquerón Battle Victory Day",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_7"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 12, 8),
        englishName: "Virgin of Caacupé",
        localName: TranslationService.instance.tr("providers_country_paraguay_holiday_providers_8"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      ),
      // Feriados móveis de Semana Santa (já trazem HolidayType.Religious)
      // Caso queira também atribuir subdivisionCodes nestes, considere
      // instanciar manualmente em vez de usar direto o CatholicHolidayProvider.
      CatholicHolidayProvider.maundyThursday(year),
      CatholicHolidayProvider.goodFriday(year),
      CatholicHolidayProvider.christmasDay(year),
    ];
  }
}
