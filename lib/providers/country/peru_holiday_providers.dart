// lib/providers/country/peru_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

/// Provider que retorna os feriados públicos do Peru para o ano informado
/// Adaptado de PeruHolidayProvider.cs do Nager.Date
class PeruHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_peru_holiday_providers_0"),
        subdivisionCodes: ['PE'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 1),
        englishName: "International Workers' Day",
        localName: TranslationService.instance.tr("providers_country_peru_holiday_providers_2"),
        subdivisionCodes: ['PE'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 28),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_peru_holiday_providers_4"),
        subdivisionCodes: ['PE'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 7, 29),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr("providers_country_peru_holiday_providers_5"),
        subdivisionCodes: ['PE'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 10, 8),
        englishName: "Battle of Angamos",
        localName: TranslationService.instance.tr("providers_country_peru_holiday_providers_7"),
        subdivisionCodes: ['PE'],
        holidayTypes: [HolidayType.Public],
      ),
      // Feriados móveis de Semana Santa (cálculos internos do provedor católico)
      CatholicHolidayProvider.maundyThursday(year), // feriado religioso
      CatholicHolidayProvider.goodFriday(year),     // feriado religioso
      CatholicHolidayProvider.easterSundayHoliday(year),   // feriado religioso
      CatholicHolidayProvider.saintPeterSaintPaul(year),   // feriado religioso
      CatholicHolidayProvider.santaRosaLima(year),   // feriado religioso
      CatholicHolidayProvider.allSaintsDay(year),   // feriado religioso
      CatholicHolidayProvider.immaculateConceptionDay(year),   // feriado religioso
      CatholicHolidayProvider.christmasDay(year),   // feriado religioso
    ];
  }
}