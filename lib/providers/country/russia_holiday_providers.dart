import '/domain/models/holiday_type.dart';
import '/domain/models/holiday_specification.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos da Rússia para o ano informado
class RussiaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    final holidays = <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_0"),
        holidayTypes: [HolidayType.Public],
      ),
      // New Year holidays: 2 a 6 de janeiro      
      HolidaySpecification(
        date: DateTime(year, 1, 2),
        englishName: "New Year holiday",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_1"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 1, 3),
        englishName: "New Year holiday",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_2"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 1, 4),
        englishName: "New Year holiday",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_3"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 1, 5),
        englishName: "New Year holiday",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_4"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 1, 6),
        englishName: "New Year holiday",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_5"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 1, 7),
        englishName: "Orthodox Christmas Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_6"),
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      ),
      HolidaySpecification(
        date: DateTime(year, 2, 23),
        englishName: "Defender of the Fatherland Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_7"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 3, 8),
        englishName: "International Women's Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_8"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_9"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 9),
        englishName: "Victory Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_10"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 6, 12),
        englishName: "Russia Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_11"),
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 4),
        englishName: "Unity Day",
        localName: TranslationService.instance.tr("providers_country_russia_holiday_providers_12"),
        holidayTypes: [HolidayType.Public],
      ),
    ];
    return holidays;
  }
}