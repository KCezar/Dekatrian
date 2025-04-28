// lib/presentation/widgets/area_calendario.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/calendar_providers.dart';
import 'dia_calendario.dart';

/// Grade 7×4 (28 dias do mês lunar), sempre cabe no espaço dado.
class AreaCalendario extends ConsumerWidget {
  const AreaCalendario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final days = ref.watch(dayControllerProvider).days;
    return LayoutBuilder(builder: (context, constraints) {
      const int cols = 7;
      const double spacing = 4;

      // largura disponível para as células
      final totalHSpacing = spacing * (cols - 1);
      final cellW = (constraints.maxWidth - totalHSpacing) / cols;

      // quantas linhas (sempre 4 para 28 dias)
      final rows = (days.length / cols).ceil();
      final totalVSpacing = spacing * (rows - 1);
      final cellH = (constraints.maxHeight - totalVSpacing) / rows;

      return Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: List.generate(days.length, (i) {
          return SizedBox(
            width: cellW,
            height: cellH,
            child: DiaCalendario(day: days[i], index: i),
          );
        }),
      );
    });
  }
}
