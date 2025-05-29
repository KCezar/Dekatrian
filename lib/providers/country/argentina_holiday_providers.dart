import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos da Argentina para o ano informado
class ArgentinaHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    // Domingo de Páscoa para calcular feriados móveis
    final easterSunday = CatholicHolidayProvider.easterSunday(year);

    final holidays = <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_0"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: easterSunday.subtract(Duration(days: 48)),
        englishName: "Carnival",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_1"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: easterSunday.subtract(Duration(days: 47)),
        englishName: "Carnival",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_2"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 3, 24),
        englishName: "Day of Remembrance for Truth and Justice",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_3"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 4, 2),
        englishName: "Day of the Veterans and Fallen of the Malvinas War",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_4"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "Labour Day",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_5"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 25),
        englishName: "May Revolution",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_6"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 6, 17),
        englishName: "Anniversary of the Passing of General Martín Miguel de Güemes",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_7"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
        // ObservedRuleSet não implementado: se cair no fim de semana, normalmente ajusta para segunda
      ),
      HolidaySpecification(
        date: DateTime(year, 6, 20),
        englishName: "General Manuel Belgrano Memorial Day",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_8"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 9),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_9"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 17),
        englishName: "General José de San Martín Memorial Day",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_10"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
        // ObservedRuleSet não implementado
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 12),
        englishName: "Day of Respect for Cultural Diversity",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_11"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
        // ObservedRuleSet não implementado
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 20),
        englishName: "National Sovereignty Day",
        localName: TranslationService.instance.tr("providers_country_argentina_holiday_providers_12"),
        subdivisionCodes: ['AR'],
        holidayTypes: [HolidayType.Public],
        // ObservedRuleSet não implementado
      ),
      // Sexta-feira Santa
      CatholicHolidayProvider.goodFriday(year), // feriado religioso
      CatholicHolidayProvider.immaculateConceptionDay(year),
      CatholicHolidayProvider.christmasDay(year), // feriado religioso
    ];

    return holidays;
  }
}