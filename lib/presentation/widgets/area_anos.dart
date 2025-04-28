// lib/presentation/widgets/area_anos.dart

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dia_calendario.dart';
import '../../providers/calendar_providers.dart';

class AreaAnos extends ConsumerWidget {
  const AreaAnos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final years       = ref.watch(yearControllerProvider).years;
    final todayLunar  = ref.watch(todayLunarProvider);
    final highlight   = DiaCalendario.weekdayColors[(todayLunar.day - 1) % 7];

    return LayoutBuilder(
      builder: (context, constraints) {
        const cols = 4;
        const spacing = 8.0;
        final totalH = (cols - 1) * spacing;
        final cellW = (constraints.maxWidth - totalH) / cols;

        final rows  = (years.length + cols - 1) ~/ cols;
        final totalV = (rows - 1) * spacing;
        final cellH = (constraints.maxHeight - totalV) / rows;

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: years.map((y) {
            final isCurr    = y == todayLunar.year;
            final bg        = isCurr ? highlight : Colors.grey.shade300;
            final isSel     = ref.watch(yearControllerProvider).selectedYear == y;

            return SizedBox(
              width: cellW,
              height: cellH,
              child: GestureDetector(
                onTap: () {
                  ref.read(yearControllerProvider.notifier).selectYear(y);
                  ref.read(dataControllerProvider.notifier).setYear(y);
                  ref.read(secondaryContentProvider.notifier).state =
                      SecondaryTab.years;
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: bg,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '$y',
                    style: TextStyle(
                      fontWeight: isCurr || isSel
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isCurr ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
