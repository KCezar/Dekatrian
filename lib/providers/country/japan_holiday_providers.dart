// lib/providers/country/japan_holiday_providers.dart

import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import 'package:dekatrian/application/services/translation_service.dart';
import '/domain/models/observed_ruleSet.dart';
import '/domain/models/date_helper.dart';



/// Provider que retorna os feriados públicos do Japão para o ano informado
class JapanHolidayProvider {
  const JapanHolidayProvider._();

  /// Regra: se cair no domingo, observa na segunda-feira
  static const ObservedRuleSet _sundayToMonday =
      ObservedRuleSet({DateTime.sunday: 1});
  /// Regra: se cair no domingo, observa na terça-feira
  static const ObservedRuleSet _sundayToTuesday =
      ObservedRuleSet({DateTime.sunday: 2});

  /// Retorna lista de feriados, já incluindo datas observadas
  static List<HolidaySpecification> getHolidays(int year) {

    // Cálculos de datas móveis
    final secondMondayInJan = DateHelper.findNthWeekday(year: year, month: 1, weekday: DateTime.monday, occurrence: 2);
    final thirdMondayInJul = DateHelper.findNthWeekday(year: year, month: 7, weekday: DateTime.monday, occurrence: 3);
    final thirdMondayInSep = DateHelper.findNthWeekday(year: year, month: 9, weekday: DateTime.monday, occurrence: 3);

    // Lista inicial de feriados
    final specs = <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_0"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
      HolidaySpecification(
        date: secondMondayInJan,
        englishName: "Coming of Age Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_1"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 2, 11),
        englishName: "Foundation Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_2"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
      HolidaySpecification(
        date: DateTime(year, 4, 29),
        englishName: "Shōwa Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_3"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 3),
        englishName: "Constitution Memorial Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_4"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 4),
        englishName: "Greenery Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_5"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToTuesday,
      ),
      HolidaySpecification(
        date: DateTime(year, 5, 5),
        englishName: "Children's Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_6"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
      HolidaySpecification(
        date: thirdMondayInJul,
        englishName: "Marine Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_7"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 8, 11),
        englishName: "Mountain Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_8"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
      HolidaySpecification(
        date: thirdMondayInSep,
        englishName: "Respect for the Aged Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_9"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 3),
        englishName: "Culture Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_10"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
      HolidaySpecification(
        date: DateTime(year, 11, 23),
        englishName: "Labour Thanksgiving Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_11"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      ),
    ];

    // Feriados dinâmicos: aniversário do imperador, equinócios e Sports Day
    final emperor = _getEmperorsBirthday(year);
    if (emperor != null) specs.add(emperor);
    final vernal = _getVernalEquinox(year);
    if (vernal != null) specs.add(vernal);
    final autumnal = _getAutumnalEquinox(year);
    if (autumnal != null) specs.add(autumnal);
    final sports = _getSportsDay(year);
    if (sports != null) specs.add(sports);

    // Aplica regras de observado e retorna lista completa
    return _applyObservedHolidays(specs);
  }

  /// Gera feriados observados quando aplicável
  static List<HolidaySpecification> _applyObservedHolidays(
      List<HolidaySpecification> holidayList) {
    final all = <HolidaySpecification>[];
    for (final holidayItem in holidayList) {
      all.add(holidayItem);
      if (holidayItem.observedRuleSet != null) {
        final observedDate = holidayItem.observedRuleSet!.apply(holidayItem.date);
        if (observedDate != holidayItem.date) {
          all.add(HolidaySpecification(
            date: observedDate,
            englishName: holidayItem.englishName,
            localName: holidayItem.localName,
            subdivisionCodes: holidayItem.subdivisionCodes,
            holidayTypes: holidayItem.holidayTypes,
          ));
        }
      }
    }
    return all;
  }

  // A seguir, métodos privados para feriados móveis são idênticos aos anteriores
  static HolidaySpecification? _getEmperorsBirthday(int year) {
    if (year < 1868) return null;
    DateTime date;
    String localName, englishName;
    if (year < 1912) {
      date = DateTime(year, 11, 3);      
    } else if (year < 1913) {
      date = DateTime(year, 8, 31);
    } else if (year < 1927) {
      date = DateTime(year, 10, 31);
    } else if (year < 1989) {
      date = DateTime(year, 4, 29);
    } else if (year < 2019) {
      date = DateTime(year, 12, 23);
    } else if (year == 2019) {
      return null;
    } else {
      date = DateTime(year, 2, 23);
    }
    return HolidaySpecification(
      date: date,
      englishName:  year < 1948 ? "The Emperor's Birthday Tenchobushi" : "The Emperor's Birthday",
      localName: year < 1948 ? TranslationService.instance.tr("providers_country_japan_holiday_providers_12") : TranslationService.instance.tr("providers_country_japan_holiday_providers_13"),
      subdivisionCodes: ['JP'],
      holidayTypes: [HolidayType.Public],
      observedRuleSet: _sundayToMonday,
    );
  }

  static HolidaySpecification? _getSportsDay(int year) {
    final date =  DateHelper.findNthWeekday(year: year, month: 10, weekday: DateTime.monday, occurrence: 2);
    if (year <= 1965) return null;
    if (year > 1965 && year < 2000) {
      return HolidaySpecification(
        date: DateTime(year, 10, 10),
        englishName: "Health and Sports Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_14"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      );
    }
    if (year >= 2000 && year < 2020) {
      return HolidaySpecification(
        date: date,
        englishName: "Health and Sports Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_14"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      );
    }
    if (year == 2020) {
      return HolidaySpecification(
        date: DateTime(year, 7, 24),
        englishName: "Sports Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_15"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      );
    }
    if (year == 2021) {
      return HolidaySpecification(
        date: DateTime(year, 7, 23),
        englishName: "Sports Day",
        localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_15"),
        subdivisionCodes: ['JP'],
        holidayTypes: [HolidayType.Public],
        observedRuleSet: _sundayToMonday,
      );
    }
    
    return HolidaySpecification(
      date: date,
      englishName: "Sports Day",
      localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_15"),
      subdivisionCodes: ['JP'],
      holidayTypes: [HolidayType.Public],
      observedRuleSet: _sundayToMonday,
    );
  }

  static HolidaySpecification? _getVernalEquinox(int year) {
    if (year < 1850 || year > 2151) return null;
    const diff = 0.242194;
    double eq;
    if (year <= 1899) {
      eq =
          (19.8277 + diff * (year - 1980) - ((year - 1983) / 4).floor());
    } else if (year <= 1979) {
      eq =
          (20.8357 + diff * (year - 1980) - ((year - 1983) / 4).floor());
    } else if (year <= 2099) {
      eq =
          (20.8431 + diff * (year - 1980) - ((year - 1980) / 4).floor());
    } else {
      eq =
          (21.8510 + diff * (year - 1980) - ((year - 1980) / 4).floor());
    }
    return HolidaySpecification(
      date: DateTime(year, 3, eq.floor()),
      englishName: "Vernal Equinox Day",
      localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_16"),
      subdivisionCodes: ['JP'],
      holidayTypes: [HolidayType.Public],
      observedRuleSet: _sundayToMonday,
    );
  }

  static HolidaySpecification? _getAutumnalEquinox(int year) {
    if (year < 1850 || year > 2151) return null;
    const diff = 0.242194;
    double eq;
    if (year <= 1899) {
      eq =
          (22.2588 + diff * (year - 1980) - ((year - 1983) / 4).floor());
    } else if (year <= 1979) {
      eq =
          (23.2588 + diff * (year - 1980) - ((year - 1983) / 4).floor());
    } else if (year <= 2099) {
      eq =
          (23.2488 + diff * (year - 1980) - ((year - 1980) / 4).floor());
    } else {
      eq =
          (24.2488 + diff * (year - 1980) - ((year - 1980) / 4).floor());
    }
    return HolidaySpecification(
      date: DateTime(year, 9, eq.floor()),
      englishName: "Autumnal Equinox Day",
      localName: TranslationService.instance.tr("providers_country_japan_holiday_providers_17"),
      subdivisionCodes: ['JP'],
      holidayTypes: [HolidayType.Public],
      observedRuleSet: _sundayToMonday,
    );
  }
}
