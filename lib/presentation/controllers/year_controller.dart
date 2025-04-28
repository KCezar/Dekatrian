// lib/presentation/controllers/year_controller.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dekatrian/providers/calendar_providers.dart';

/// Estado da seleção de ano
class YearState {
  /// Lista de anos lunar (Dekatrian)
  final List<int> years;
  /// Ano atualmente selecionado
  final int selectedYear;

  YearState({required this.years, required this.selectedYear});

  YearState copyWith({List<int>? years, int? selectedYear}) {
    return YearState(
      years: years ?? this.years,
      selectedYear: selectedYear ?? this.selectedYear,
    );
  }
}

/// Controller para faixa de anos Dekatrian
class YearController extends StateNotifier<YearState> {
  YearController({required int initialYear})
      : super(
          YearState(
            years: List.generate(21, (i) => initialYear - 10 + i),
            selectedYear: initialYear,
          ),
        );

  void selectYear(int year) {
    if (!state.years.contains(year)) return;
    state = state.copyWith(selectedYear: year);
  }
}

/// Provider para YearController, iniciado no ano lunar atual
final yearControllerProvider =
    StateNotifierProvider<YearController, YearState>((ref) {
  // obtém o ano lunar atual via DataController
  final lunarYear = ref.read(dataControllerProvider).lunar.year;
  return YearController(initialYear: lunarYear);
});