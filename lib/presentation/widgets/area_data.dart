// lib/presentation/widgets/area_data.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dekatrian/providers/calendar_providers.dart';

class AreaData extends ConsumerWidget {
  const AreaData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataState = ref.watch(dataControllerProvider);
    final controller = ref.read(dataControllerProvider.notifier);

    final lunar = dataState.lunar;
    final day = lunar.day;
    final monthIdx = lunar.monthIndex;
    final year = lunar.year;

    return Container(
      padding: const EdgeInsets.all(7),
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        children: [
          // --- Botão DIA ---
          ElevatedButton(
            onPressed: () {
              controller.setDay(day);
              // mostra o grid de dias
              ref.read(secondaryContentProvider.notifier).state =
                  SecondaryTab.none;
            },
            child: Text(
              day.toString().padLeft(2,'0'),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(width: 8),

          // --- Botão MÊS ---
          ElevatedButton(
            onPressed: () {
              controller.setMonth(monthIdx);
              // mostra o grid de meses
              ref.read(secondaryContentProvider.notifier).state =
                  SecondaryTab.months;
            },
            child: Text(
              (monthIdx + 1).toString().padLeft(2,'0'),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(width: 8),

          // --- Botão ANO ---
          ElevatedButton(
            onPressed: () {
              controller.setYear(year);
              // mostra o grid de anos
              ref.read(secondaryContentProvider.notifier).state =
                  SecondaryTab.years;
            },
            child: Text(
              year.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          // resto do código…
        ],
      ),
    );
  }
}
