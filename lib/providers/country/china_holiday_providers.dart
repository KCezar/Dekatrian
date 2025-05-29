import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import 'package:dekatrian/application/services/translation_service.dart';
import 'package:dekatrian/application/services/chinese_lunisolar_calendar_service.dart';

/// Provider que retorna os feriados públicos da China para o ano informado
class ChinaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_china_holiday_providers_0"),
        subdivisionCodes: ['CN'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: ChineseLunisolarCalendarService.chineseNewYear(year),
        englishName: "Chinese New Year",
        localName: TranslationService.instance.tr("providers_country_china_holiday_providers_1"),
        subdivisionCodes: ['CN'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious],
      ),
      HolidaySpecification(
        date: DateTime(year, 4, 5),
        englishName: "Qingming Festival (Tomb-Sweeping Day)",
        localName: TranslationService.instance.tr("providers_country_china_holiday_providers_2"),
        subdivisionCodes: ['CN'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "International Workers' Day",
        localName: TranslationService.instance.tr("providers_country_china_holiday_providers_3"),
        subdivisionCodes: ['CN'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: ChineseLunisolarCalendarService.dragonBoatFestival(year),
        englishName: "Dragon Boat Festival",
        localName: TranslationService.instance.tr("providers_country_china_holiday_providers_4"),
        subdivisionCodes: ['CN'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious],
      ),
      HolidaySpecification(
        date: ChineseLunisolarCalendarService.midAutumnFestival(year),
        englishName: "Mid-Autumn Festival",
        localName: TranslationService.instance.tr("providers_country_china_holiday_providers_5"),
        subdivisionCodes: ['CN'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious],
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 1),
        englishName: "National Day",
        localName: TranslationService.instance.tr("providers_country_china_holiday_providers_6"),
        subdivisionCodes: ['CN'],
        holidayTypes: [HolidayType.Public],
      ),
    ];
  }
}
