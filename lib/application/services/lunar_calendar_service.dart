import 'package:intl/intl.dart';
import '../../domain/models/lunar_date.dart';

/// Serviço que contém a lógica de conversão lunar <-> gregoriana
class LunarCalendarService {
  int _daysPassed(DateTime date) {
    final start = DateTime(date.year, 1, 1);
    return date.difference(start).inDays;
  }

  bool _isLeap(int y) {
    if (y % 400 == 0) return true;
    if (y % 100 == 0) return false;
    return y % 4 == 0;
  }

  LunarDate fromGregorian(DateTime date) {
    final dias = _daysPassed(date);
    int lunarYear = date.year + 10000;
    int dayOfMonth;
    int month;

    // lógica adaptada do Python
    if (dias == 0) {
      dayOfMonth = 0;
      month = 0;
    } else if (_isLeap(date.year)) {
      if (dias == 1) {
        dayOfMonth = -1;
        month = 0;
      } else {
        dayOfMonth = ((dias - 1) % 28);
        month = ((dias - 1) ~/ 28) + 1;
        if (dayOfMonth == 0) dayOfMonth = 28;
      }
    } else {
      dayOfMonth = (dias % 28);
      month = (dias ~/ 28) + 1;
      if (dayOfMonth == 0) dayOfMonth = 28;
    }
    if (month > 13) month = 13;

    return LunarDate(
      day: dayOfMonth == 0 ? 1 : dayOfMonth,
      monthIndex: month > 0 ? month - 1 : 0,
      year: lunarYear,
    );
  }

  DateTime toGregorian(LunarDate lunar) {
    final year = lunar.year - 10000;
    final start = DateTime(year, 1, 1);
    // número de dias a verificar no ano (365 ou 366)
    final daysInYear = _isLeap(year) ? 366 : 365;

    // Brute-force: encontra data que gera o mesmo LunarDate
    for (var i = 0; i < daysInYear; i++) {
      final candidate = start.add(Duration(days: i));
      final computed = fromGregorian(candidate);
      if (computed.day == lunar.day &&
          computed.monthIndex == lunar.monthIndex &&
          computed.year == lunar.year) {
        return candidate;
      }
    }
    // fallback para 1º jan.
    return start;
  }

  String toGregorianString(LunarDate lunar) {
    final dt = toGregorian(lunar);
    return DateFormat('dd/MM/yyyy').format(dt);
  }
}