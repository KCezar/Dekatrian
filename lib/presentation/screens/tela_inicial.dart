// lib/presentation/screens/tela_inicial.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dekatrian/providers/calendar_providers.dart';
import 'package:dekatrian/providers/app_providers.dart';
import 'package:dekatrian/presentation/widgets/area_calendario.dart';
import 'package:dekatrian/presentation/widgets/area_meses.dart';
import 'package:dekatrian/presentation/widgets/area_anos.dart';

/// Tela inicial: exibe data lunar + gregoriana, botão de “Dia/Mês/Ano”,
/// o calendário lunar e o painel secundário (meses ou anos).
class TelaInicial extends ConsumerWidget {
  const TelaInicial({Key? key}) : super(key: key);
  static const int _flexSecondary  = 5;
  static const int _flexCalendar  = 9;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataState = ref.watch(dataControllerProvider);
    final dataCtrl = ref.read(dataControllerProvider.notifier);
    String month = dataState.lunar.monthIndex == 13 ? "Achronian" : "Sinchronian"; 
    String dekatrianTitleDate = dataState.lunar.monthIndex == 13 ? "${dataState.lunar.lunarMonthName} ${month} ${dataState.lunar.year}" : 
                          '${dataState.lunar.day} ${dataState.lunar.lunarMonthName} (${dataState.lunar.monthIndex+1}) ${dataState.lunar.year}';
    
    return PopScope<void>(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          ref.read(screenIndexProvider.notifier).setIndex(0);
        }
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              // 1) Data Dekatrian
              Text(
                dekatrianTitleDate,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              // 2) Data Gregoriana
              Text(
                dataState.gregorian,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              // 3) Botões de navegação Dia / Mês / Ano
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      dataCtrl.setDay(dataState.lunar.day);
                      ref
                          .read(secondaryContentProvider.notifier)
                          .state = SecondaryTab.none;
                    },
                    child: const Text('Dia'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {
                      dataCtrl.setMonth(dataState.lunar.monthIndex);
                      ref
                          .read(secondaryContentProvider.notifier)
                          .state = SecondaryTab.months;
                    },
                    child: const Text('Mês'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {
                      dataCtrl.setYear(dataState.lunar.year);
                      ref
                          .read(secondaryContentProvider.notifier)
                          .state = SecondaryTab.years;
                    },
                    child: const Text('Ano'),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // 4) Calendário lunar (grid 28 dias)
              Expanded(
                flex: _flexCalendar,
                child: _CalendarContainer(),
              ),

              const SizedBox(height: 16),

              // 5) Seção secundária: meses ou anos
              Expanded(
                flex: _flexSecondary,
                child: const _SecondarySection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Container que dá fundo e padding ao grid de dias
class _CalendarContainer extends StatelessWidget {
  const _CalendarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(4),
      child: const AreaCalendario(),
    );
  }
}

/// Decide se mostra grid de meses, anos ou nada
class _SecondarySection extends ConsumerWidget {
  const _SecondarySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tab = ref.watch(secondaryContentProvider);
    switch (tab) {
      case SecondaryTab.months:
        return const AreaMeses();
      case SecondaryTab.years:
        return const AreaAnos();
      case SecondaryTab.none:
      default:
        return const SizedBox.shrink();
    }
  }
}