import '/domain/models/holiday_specification.dart';
import '/domain/models/holiday_type.dart';
import '/providers/religion/catholic_providers.dart';
import '/application/services/translation_service.dart';
import '/domain/models/date_helper.dart';
import '/domain/models/observed_ruleSet.dart';

/// Provider that returns a list of United States holidays for a given year
class UnitedStatesHolidayProvider {
  static List<HolidaySpecification> getHolidays(int year) {
    // Observed rule: if holiday falls on Saturday, move to Friday; Sunday to Monday
    const observedRuleSet = ObservedRuleSet({
      DateTime.saturday: -1,
      DateTime.sunday: 1,
    });

    // Helper to find last weekday of a month
    DateTime _findLastWeekday(int month, int weekday) {
      var date = DateTime(year, month + 1, 1).subtract(Duration(days: 1));
      while (date.weekday != weekday) {
        date = date.subtract(Duration(days: 1));
      }
      return date;
    }

    final thirdMondayInJanuary = DateHelper.findNthWeekday(
      year: year,
      month: 1,
      weekday: DateTime.monday,
      occurrence: 3,
    );

    final thirdMondayInFebruary = DateHelper.findNthWeekday(
      year: year,
      month: 2,
      weekday: DateTime.monday,
      occurrence: 3,
    );

    final lastMondayInMay = _findLastWeekday(5, DateTime.monday);
    final firstMondayInSeptember = DateHelper.findNthWeekday(
      year: year,
      month: 9,
      weekday: DateTime.monday,
      occurrence: 1,
    );
    final secondMondayInOctober = DateHelper.findNthWeekday(
      year: year,
      month: 10,
      weekday: DateTime.monday,
      occurrence: 2,
    );
    final fourthThursdayInNovember = DateHelper.findNthWeekday(
      year: year,
      month: 11,
      weekday: DateTime.thursday,
      occurrence: 4,
    );

    return <HolidaySpecification>[
      HolidaySpecification(
        date: DateTime(year, 1, 1),
        englishName: "New Year's Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_0'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
        observedRuleSet: observedRuleSet,
      ),

      HolidaySpecification(
        date: thirdMondayInJanuary,
        englishName: "Martin Luther King, Jr. Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_1'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
      ),

      HolidaySpecification(
        date: thirdMondayInFebruary,
        englishName: "Presidents' Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_2'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
      ),

      HolidaySpecification(
        date: lastMondayInMay,
        englishName: "Memorial Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_3'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
      ),

      HolidaySpecification(
        date: DateTime(year, 6, 19),
        englishName: "Juneteenth National Independence Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_4'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],        
        observedRuleSet: observedRuleSet,
      ),

      HolidaySpecification(
        date: DateTime(year, 7, 4),
        englishName: "Independence Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_5'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
        observedRuleSet: observedRuleSet,
      ),

      HolidaySpecification(
        date: firstMondayInSeptember,
        englishName: "Labor Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_6'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
      ),

      HolidaySpecification(
        date: secondMondayInOctober,
        englishName: "Columbus Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_7'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ["US-AL", "US-AZ", "US-CO", "US-CT", "US-GA", "US-ID", "US-IL", "US-IN", "US-IA", "US-KS", "US-KY", "US-LA", "US-ME", "US-MD", "US-MA", "US-MS", "US-MO", "US-MT", "US-NE", "US-NH", "US-NJ", "US-NM", "US-NY", "US-NC", "US-OH", "US-OK", "US-PA", "US-RI", "US-SC", "US-TN", "US-UT", "US-VA", "US-WV"],
      ),

      HolidaySpecification(
        date: DateTime(year, 11, 11),
        englishName: "Veterans Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_8'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
        observedRuleSet: observedRuleSet,
      ),

      HolidaySpecification(
        date: fourthThursdayInNovember,
        englishName: "Thanksgiving Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_9'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US'],
      ),

      HolidaySpecification(
        date: DateTime(year, 5, 8),
        englishName: "Truman Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_11'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US-MO'],
      ),
      HolidaySpecification(
        date: secondMondayInOctober,
        englishName: "Indigenous Peoples Day",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_12'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ['US-MO'],
      ),
      HolidaySpecification(
        date: DateTime(year, 2, 12),
        englishName: "Lincoln's Birthday",
        localName: TranslationService.instance.tr('providers_country_united_states_holiday_providers_13'),
        holidayTypes: [HolidayType.Public],
        subdivisionCodes: ["US-CA", "US-CT", "US-IL", "US-IN", "US-KY", "US-MI", "US-NY", "US-MO", "US-OH"],
      ),
      // Optional: Good Friday for certain states
      CatholicHolidayProvider.goodFriday(year),
      CatholicHolidayProvider.christmasDay(year),
    ];
  }
}