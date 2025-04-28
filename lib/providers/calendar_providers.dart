// lib/providers/calendar_providers.dart

import 'package:dekatrian/application/services/lunar_calendar_service.dart';
import 'package:dekatrian/domain/models/lunar_date.dart';
import 'package:dekatrian/presentation/controllers/data_controller.dart';
import 'package:dekatrian/presentation/controllers/day_controller.dart';
import 'package:dekatrian/presentation/controllers/month_controller.dart';
import 'package:dekatrian/presentation/controllers/year_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final monthControllerProvider =
    StateNotifierProvider<MonthController, MonthState>((ref) {
  final lunar = ref.read(dataControllerProvider).lunar;
  return MonthController(initialIndex: lunar.monthIndex);
});

final dayControllerProvider =
    StateNotifierProvider<DayController, DayState>((ref) {
  final lunar = ref.read(dataControllerProvider).lunar;
  return DayController(initialDay: lunar.day);
});

final yearControllerProvider =
    StateNotifierProvider<YearController, YearState>((ref) {
  // Obtém o ano lunar atual via DataController
  final lunarYear = ref.read(dataControllerProvider).lunar.year;
  return YearController(initialYear: lunarYear);
});

final dataControllerProvider =
    StateNotifierProvider<DataController, DataState>((ref) {
  return DataController();
});

enum SecondaryTab { none, calendar, months, years }
final secondaryContentProvider =
  StateProvider<SecondaryTab>((ref) => SecondaryTab.none);

  /// Provider que expõe o lunar de hoje (imutável)
final todayLunarProvider = Provider<LunarDate>((ref) {
  final svc = LunarCalendarService();
  return svc.fromGregorian(DateTime.now());
});
