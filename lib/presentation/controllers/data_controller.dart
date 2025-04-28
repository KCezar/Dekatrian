import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/lunar_date.dart';
import '../../application/services/lunar_calendar_service.dart';

/// Estado que combina data lunar e string da data gregoriana
class DataState {
  final LunarDate lunar;
  final String gregorian;
  DataState({required this.lunar, required this.gregorian});

  DataState copyWith({LunarDate? lunar, String? gregorian}) {
    return DataState(
      lunar: lunar ?? this.lunar,
      gregorian: gregorian ?? this.gregorian,
    );
  }
}

/// Controller que delega cálculos lunares ao service
class DataController extends StateNotifier<DataState> {
  final _service = LunarCalendarService();

  DataController()
      : super(DataState(
          lunar: LunarDate(day: 1, monthIndex: 0, year: DateTime.now().year + 10000),
          gregorian: '',
        )) {
    // inicializa com data atual
    setFromGregorian(DateTime.now());
  }

  void setFromGregorian(DateTime date) {
    final lunar = _service.fromGregorian(date);
    final greg = _service.toGregorianString(lunar);
    state = DataState(lunar: lunar, gregorian: greg);
  }

  void setDay(int day) {
    final lunar = state.lunar.copyWith(day: day);
    setLunar(lunar);
  }

  void setMonth(int idx) {
    final lunar = state.lunar.copyWith(monthIndex: idx);
    setLunar(lunar);
  }

  void setYear(int year) {
    final lunar = state.lunar.copyWith(year: year);
    setLunar(lunar);
  }

  void setLunar(LunarDate lunar) {
    state = DataState(
      lunar: lunar,
      gregorian: _service.toGregorianString(lunar),
    );
  }
}
