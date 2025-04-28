// lib/presentation/widgets/area_calendario.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dia_calendario.dart';
import '../../providers/calendar_providers.dart';

/// Grade de 7 colunas × 4 linhas para o mês lunar de 28 dias,
/// com cabeçalho fixo de labels por dia da semana.
class AreaCalendario extends ConsumerWidget {
  const AreaCalendario({Key? key}) : super(key: key);

  static const double _spacing = 8.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final days = ref.watch(dayControllerProvider).days;

    // Divide em “semanas” de 7 dias
    final List<List<int>> weeks = List.generate(
      4,
      (r) => days.sublist(r * 7, r * 7 + 7),
    );

    return Column(
      children: [
        // cabeçalho de labels
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: DiaCalendario.weekdayLabels.map((label) {
              return Expanded(
                child: Center(
                  child: Text(
                    label,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              );
            }).toList(),
          ),
        ),

        // grid 7×4 com spacing e full expand
        Expanded(
          child: Column(
            children: [
              for (var row = 0; row < weeks.length; row++) ...[
                Expanded(
                  child: Row(
                    children: [
                      for (var col = 0; col < 7; col++) ...[
                        Expanded(
                          child: DiaCalendario(
                            day: weeks[row][col],
                            index: row * 7 + col,
                          ),
                        ),
                        if (col < 6) const SizedBox(width: _spacing),
                      ],
                    ],
                  ),
                ),
                if (row < weeks.length - 1) const SizedBox(height: _spacing),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
