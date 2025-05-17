// lib/presentation/widgets/dia_calendario.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dekatrian/providers/calendar_providers.dart';
import '../../application/services/lunar_calendar_service.dart';
import 'package:dekatrian/providers/holiday_providers.dart';

/// Um botão que representa UM dia do mês (1..28)
/// Pinta a coluna conforme o dia da semana, destaca o dia "hoje"
/// e marca com "F" sobrescrito em fins de semana gregorianos.
class DiaCalendario extends ConsumerWidget {
  final int day;
  final int index; // posição no grid (0..27)
  const DiaCalendario({Key? key, required this.day, required this.index}) : super(key: key);

  static const List<String> weekdayLabels = [
    'Rubia', 'Auria', 'Flavia', 'Virdia',
    'Coria', 'India', 'Violeta',
  ];

  static const List<Color> weekdayColors = [
    Color(0xFFFF6F61), // Rubia
    Color(0xFFFFD700), // Auria
    Color(0xFFADFF2F), // Flavia
    Color(0xFF32CD32), // Virdia
    Color(0xFF1E90FF), // Coria
    Color(0xFF8A2BE2), // India
    Color(0xFFDA70D6), // Violeta
  ];

  // Aumenta saturação em 20% para tornar a cor mais "quente"
  Color _warm(Color c) {
    final hsl = HSLColor.fromColor(c);
    final newSat = (hsl.saturation * 1.9).clamp(0.0, 1.0);
    return hsl.withSaturation(newSat).toColor();
  }


  Color _darken(Color c, double amt) {
    final f = 1 - amt;
    return Color.fromARGB(
      c.alpha,
      (c.red * f).round(),
      (c.green * f).round(),
      (c.blue * f).round(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataState = ref.watch(dataControllerProvider);
    final currentLunar = dataState.lunar;
    final monthState = ref.watch(monthControllerProvider);

    // feriados habilitados configurados pelo user
    final holidayDatesAsync = ref.watch(enabledHolidayDatesProvider);
    final holidayDates = holidayDatesAsync.maybeWhen(
      data: (list) => list,
      orElse: ()  => [],
    );
    final holidaySet = holidayDates
      .map((d) => DateTime(d.year, d.month, d.day))
      .toSet();

    // data fixa de hoje do sistema
    final todayLunar = ref.watch(todayLunarProvider);

    // flags de seleção
    final isSelected = ref.watch(dayControllerProvider).selectedDay == day;
    // hoje = comparado com a data fixa de hoje, não com a data selecionada
    final isToday = todayLunar.monthIndex == monthState.selectedIndex && todayLunar.day == day;
    ref.watch(dayControllerProvider).selectedDay == day;

    final weekday = index % 7;
    final base = _warm(weekdayColors[weekday]);
    final bg = isSelected
        ? Theme.of(context).colorScheme.primary
        : base.withAlpha((base.alpha * 0.25).round());

    // detecta fim de semana no gregoriano
    final service = LunarCalendarService();
    final thisLunar = currentLunar.copyWith(day: day);
    final greg = service.toGregorian(thisLunar);
    final isWeekend = greg.weekday == DateTime.saturday || greg.weekday == DateTime.sunday;
    final isHoliday = holidaySet.contains(DateTime(greg.year, greg.month, greg.day));

    return GestureDetector(
      onTap: () {
        ref.read(dayControllerProvider.notifier).selectDay(day);
        ref.read(dataControllerProvider.notifier).setDay(day);
        // monta mensagens
        final msgs = <String>[];
        if (isWeekend) {
          msgs.add(
            greg.weekday == DateTime.saturday
                ? 'Sábado  - (F)inal de (S)emana'
                : 'Domingo - (F)inal de (S)emana',
          );
        }
        // busca nomes de feriado e atualiza provider
        if (isHoliday) {
          ref
            .read(holidayNamesByDateProvider(
              DateTime(greg.year, greg.month, greg.day),
            ).future)
            .then((names) {
              ref
                .read(selectedDayMessagesProvider.notifier)
                .state = [
                  ...msgs,
                  ...names.map((n) => '(FE)riado: $n'),
                ];
            });
        } else {
          ref.read(selectedDayMessagesProvider.notifier).state = msgs;
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(6),
          boxShadow: isToday
              ? [
                  BoxShadow(
                    color: base.withAlpha((base.alpha * 0.6).round()),
                    blurRadius: 12,
                    spreadRadius: 4,
                  ),
                ]
              : null,
        ),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$day',
                style: TextStyle(
                  decoration: isToday ? TextDecoration.underline : TextDecoration.none,
                  decorationThickness: 2,
                  color: isSelected ? Colors.white : _darken(base, 0.9),
                  fontWeight: isSelected || isToday ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              if (isWeekend)
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Transform.translate(
                    offset: const Offset(2, -6),
                    child: Text(
                      'FS',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              if (isHoliday)
                WidgetSpan(
                  alignment: PlaceholderAlignment.bottom,
                  child: Transform.translate(
                    offset: const Offset(2, 6),
                    child: Text(
                      'FE',
                      style: TextStyle(
                        fontSize: 8,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
