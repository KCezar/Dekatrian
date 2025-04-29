// lib/presentation/widgets/area_meses.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dia_calendario.dart'; // weekdayColors
import '../../providers/calendar_providers.dart';

class AreaMeses extends ConsumerWidget {
  const AreaMeses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final baseNames      = ref.watch(monthControllerProvider).names;
    final todayLunar     = ref.watch(todayLunarProvider);
    final highlightColor = DiaCalendario.weekdayColors[(todayLunar.day - 1) % 7];
    final sysMonthIdx    = todayLunar.monthIndex;
    final names          = [...baseNames, 'Achronian', 'Sinchronian'];
    final currentLunar = ref.watch(dataControllerProvider).lunar;

    // calcula se mostra Sinchronian
    final nextYear     = currentLunar.year - 10000 + 1;
    final showSynch    = (nextYear % 400 == 0) ||
                         (nextYear % 100 != 0 && nextYear % 4 == 0);

    return LayoutBuilder(
      builder: (context, constraints) {
        const cols = 4;
        const spacing = 8.0;
        final totalH = (cols - 1) * spacing;
        final cellW = (constraints.maxWidth - totalH) / cols;

        // quantas linhas vão caber? divide itens visíveis por cols
        final itemCount = showSynch ? names.length : names.length - 1;
        final rows = (itemCount + cols - 1) ~/ cols;
        final totalV = (rows - 1) * spacing;
        // altura disponível no Expanded
        final cellH = (constraints.maxHeight - totalV) / rows;
        final height = cellH; // aqui usamos altura fixa

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: List.generate(names.length, (i) {
            if (i == names.length - 1 && !showSynch) {
              return const SizedBox.shrink();
            }
            final label = names[i];
            final isCurr = i == sysMonthIdx;
            final bg = i < baseNames.length
                ? (isCurr ? highlightColor : Colors.grey.shade300)
                : (i == baseNames.length
                    ? const Color(0xFFFFD700)
                    : const Color.fromARGB(255, 241, 125, 252));

            return SizedBox(
              width: cellW,
              height: height,
              child: GestureDetector(
                onTap: () {
                  ref.read(monthControllerProvider.notifier).selectMonth(i);
                  ref.read(dataControllerProvider.notifier).setMonth(i);
                  ref.read(secondaryContentProvider.notifier).state =
                      SecondaryTab.months;
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: bg,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontWeight:
                          isCurr ? FontWeight.bold : FontWeight.normal,
                      color: isCurr ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
