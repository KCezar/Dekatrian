// lib/presentation/controllers/month_controller.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/lunar_date.dart';

/// Estado da seleção de mês
class MonthState {
  final List<String> names;
  final int selectedIndex;
  MonthState({required this.names, required this.selectedIndex});

  MonthState copyWith({List<String>? names, int? selectedIndex}) {
    return MonthState(
      names: names ?? this.names,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}

/// Controller para meses do calendário lunar, inicializa no mês lunar corrente
class MonthController extends StateNotifier<MonthState> {
  MonthController({required int initialIndex})
      : super(
          MonthState(
            names: [...LunarDate.lunarMonthNames],
            selectedIndex: initialIndex,
          ),
        );

  void selectMonth(int index) {
    if (index < 0 || index >= state.names.length) return;
    state = state.copyWith(selectedIndex: index);
  }
}