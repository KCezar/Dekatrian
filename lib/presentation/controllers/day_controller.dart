// lib/presentation/controllers/day_controller.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Estado da seleção de dia (1..28)
class DayState {
  final List<int> days;
  final int selectedDay;
  DayState({required this.days, required this.selectedDay});

  DayState copyWith({List<int>? days, int? selectedDay}) {
    return DayState(
      days: days ?? this.days,
      selectedDay: selectedDay ?? this.selectedDay,
    );
  }
}

/// Controller para dias do mês lunar, inicializa no dia lunar corrente
class DayController extends StateNotifier<DayState> {
  DayController({required int initialDay})
      : super(
          DayState(
            days: List.generate(28, (i) => i + 1),
            selectedDay: initialDay,
          ),
        );

  void selectDay(int day) {
    if (!state.days.contains(day)) return;
    state = state.copyWith(selectedDay: day);
  }
}