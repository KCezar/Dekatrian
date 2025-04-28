// test/calendar_controllers_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dekatrian/providers/calendar_providers.dart';
import 'package:dekatrian/presentation/controllers/data_controller.dart';
import 'package:dekatrian/application/services/lunar_calendar_service.dart';
import 'package:dekatrian/domain/models/lunar_date.dart';

void main() {
  late ProviderContainer container;
  late LunarCalendarService service;

  setUp(() {
    container = ProviderContainer();
    service = LunarCalendarService();
  });

  tearDown(() {
    container.dispose();
  });

  group('MonthController', () {
    test('initial state has 13 months and selectedIndex matches lunar.monthIndex', () {
      final state = container.read(monthControllerProvider);
      expect(state.names, LunarDate.lunarMonthNames);
      expect(state.names.length, 13);

      final lunar = container.read(dataControllerProvider).lunar;
      expect(state.selectedIndex, lunar.monthIndex);
    });

    test('selectMonth updates selectedIndex within range', () {
      final notifier = container.read(monthControllerProvider.notifier);
      notifier.selectMonth(5);
      final state = container.read(monthControllerProvider);
      expect(state.selectedIndex, 5);
    });

    test('selectMonth ignores out-of-range', () {
      final lunar = container.read(dataControllerProvider).lunar;
      final notifier = container.read(monthControllerProvider.notifier);
      notifier.selectMonth(100);
      expect(container.read(monthControllerProvider).selectedIndex, lunar.monthIndex);
    });
  });

  group('DayController', () {
    test('initial state has days 1..28 and selectedDay matches lunar.day', () {
      final state = container.read(dayControllerProvider);
      expect(state.days, List.generate(28, (i) => i + 1));

      final lunar = container.read(dataControllerProvider).lunar;
      expect(state.selectedDay, lunar.day);
    });

    test('selectDay updates selectedDay for valid', () {
      final notifier = container.read(dayControllerProvider.notifier);
      notifier.selectDay(15);
      expect(container.read(dayControllerProvider).selectedDay, 15);
    });

    test('selectDay ignores invalid', () {
      final initial = container.read(dayControllerProvider).selectedDay;
      container.read(dayControllerProvider.notifier).selectDay(0);
      expect(container.read(dayControllerProvider).selectedDay, initial);
    });
  });

  group('YearController', () {
    test('initial state years list centered on lunar.year', () {
      final lunar = container.read(dataControllerProvider).lunar;
      final state = container.read(yearControllerProvider);
      expect(state.years.length, 21);
      expect(state.years.contains(lunar.year), isTrue);
      expect(state.selectedYear, lunar.year);
    });

    test('selectYear updates when valid', () {
      final state0 = container.read(yearControllerProvider);
      final last = state0.years.last;
      container.read(yearControllerProvider.notifier).selectYear(last);
      expect(container.read(yearControllerProvider).selectedYear, last);
    });

    test('selectYear ignores invalid', () {
      final lunar = container.read(dataControllerProvider).lunar;
      container.read(yearControllerProvider.notifier).selectYear(9999);
      expect(container.read(yearControllerProvider).selectedYear, lunar.year);
    });
  });

  group('DataController conversion', () {
    test('initial state.gregorian equals conversion of lunar', () {
      final state = container.read(dataControllerProvider);
      final expected = service.toGregorianString(state.lunar);
      expect(state.gregorian, expected);
    });

    test('setFromGregorian updates lunar and gregorian correctly', () {
      final notifier = container.read(dataControllerProvider.notifier);
      final testDate = DateTime(2020, 1, 1);
      notifier.setFromGregorian(testDate);
      final state = container.read(dataControllerProvider);

      // lunar date matches service.fromGregorian
      final lunar = service.fromGregorian(testDate);
      expect(state.lunar.day, lunar.day);
      expect(state.lunar.monthIndex, lunar.monthIndex);
      expect(state.lunar.year, lunar.year);

      // gregorian matches conversion of this lunar
      expect(state.gregorian, service.toGregorianString(lunar));
    });

    test('setDay updates lunar.day and gregorian conversion', () {
      final notifier = container.read(dataControllerProvider.notifier);
      notifier.setFromGregorian(DateTime(2021, 5, 10));
      notifier.setDay(7);
      final state = container.read(dataControllerProvider);
      expect(state.lunar.day, 7);
      expect(state.gregorian, service.toGregorianString(state.lunar));
    });

    test('setMonth updates lunar.monthIndex and gregorian conversion', () {
      final notifier = container.read(dataControllerProvider.notifier);
      notifier.setFromGregorian(DateTime(2022, 6, 15));
      notifier.setMonth(3);
      final state = container.read(dataControllerProvider);
      expect(state.lunar.monthIndex, 3);
      expect(state.gregorian, service.toGregorianString(state.lunar));
    });

    test('setYear updates lunar.year and gregorian conversion', () {
      final notifier = container.read(dataControllerProvider.notifier);
      notifier.setFromGregorian(DateTime(2023, 7, 20));
      notifier.setYear(3000);
      final state = container.read(dataControllerProvider);
      expect(state.lunar.year, 3000);
      expect(state.gregorian, service.toGregorianString(state.lunar));
    });
  });
}