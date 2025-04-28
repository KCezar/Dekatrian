// lib/presentation/widgets/mes_calendario.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/calendar_providers.dart';

class MesCalendario extends ConsumerWidget {
  final int index;
  const MesCalendario({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(monthControllerProvider);
    final isSel = state.selectedIndex == index;
    final label = state.names[index];

    return GestureDetector(
      onTap: () {
        ref.read(monthControllerProvider.notifier).selectMonth(index);
        ref.read(dataControllerProvider.notifier).setMonth(index);
        ref.read(secondaryContentProvider.notifier).state =
            SecondaryTab.months;
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSel
              ? Theme.of(context).colorScheme.primary
              : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSel ? Colors.white : Colors.black87,
            fontWeight: isSel ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
