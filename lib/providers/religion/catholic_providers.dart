import 'package:dekatrian/domain/models/holiday_specification.dart';
import 'package:dekatrian/domain/models/holiday_type.dart';

/// Conjunto de feriados do calendário católico, semelhantes ao provider do Nager.Date
class CatholicHolidayProvider {
  // Cache interno para evitar recálculos de Páscoa
  static final Map<int, DateTime> _easterCache = {};

  /// Calcula o Domingo de Páscoa para o ano informado (algoritmo de Gauss)
  static DateTime easterSunday(int year) {
    return _easterCache.putIfAbsent(year, () {
      final a = year % 19;
      final b = year ~/ 100;
      final c = year % 100;
      final d = b ~/ 4;
      final e = b % 4;
      final f = (b + 8) ~/ 25;
      final g = (b - f + 1) ~/ 3;
      final h = (19 * a + b - d - g + 15) % 30;
      final i = c ~/ 4;
      final k = c % 4;
      final l = (32 + 2 * e + 2 * i - h - k) % 7;
      final m = (a + 11 * h + 22 * l) ~/ 451;
      final month = (h + l - 7 * m + 114) ~/ 31;
      final day = ((h + l - 7 * m + 114) % 31) + 1;
      return DateTime(year, month, day);
    });
  }

  /// Quinta-feira Santa (Maundy Thursday)
  static HolidaySpecification maundyThursday(int year) {
    final date = easterSunday(year).subtract(const Duration(days: 3));
    return HolidaySpecification(
      date: date,
      englishName: 'Maundy Thursday',
      localName: 'Quinta-feira Santa',
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR'],
    );
  }

  /// Sexta-feira Santa (Good Friday)
  static HolidaySpecification goodFriday(int year) {
    final date = easterSunday(year).subtract(const Duration(days: 2));
    return HolidaySpecification(
      date: date,
      englishName: 'Good Friday',
      localName: 'Sexta-feira Santa',
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR'],
    );
  }

  /// Domingo de Páscoa (Easter Sunday)
  static HolidaySpecification easterSundayHoliday(int year) {
    final date = easterSunday(year);
    return HolidaySpecification(
      date: date,
      englishName: 'Easter Sunday',
      localName: 'Domingo de Páscoa',
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR'],
    );
  }

  /// Segunda-feira de Páscoa (Easter Monday)
  static HolidaySpecification easterMonday(int year) {
    final date = easterSunday(year).add(const Duration(days: 1));
    return HolidaySpecification(
      date: date,
      englishName: 'Easter Monday',
      localName: 'Segunda-feira de Páscoa',
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR'],
    );
  }

  /// Ascensão do Senhor (Ascension Day)
  static HolidaySpecification ascensionDay(int year) {
    final date = easterSunday(year).add(const Duration(days: 39));
    return HolidaySpecification(
      date: date,
      englishName: 'Ascension Day',
      localName: 'Ascensão do Senhor',
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR'],
    );
  }

  /// Pentecostes (Pentecost)
  static HolidaySpecification pentecost(int year) {
    final date = easterSunday(year).add(const Duration(days: 49));
    return HolidaySpecification(
      date: date,
      englishName: 'Pentecost',
      localName: 'Pentecostes',
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR'],
    );
  }

  /// Corpus Christi
  static HolidaySpecification corpusChristi(int year) {
    final date = easterSunday(year).add(const Duration(days: 60));
    return HolidaySpecification(
      date: date,
      englishName: 'Corpus Christi',
      localName: 'Corpus Christi',
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR'],
    );
  }

  static HolidaySpecification allSoulsDay(int year) {
     return HolidaySpecification(
        date: DateTime(year, 11, 2),
        englishName: "All Souls' Day",
        localName: "Dia de Finados",
        holidayTypes: [HolidayType.Religious],
        subdivisionCodes: ['BR'],
      );
  }

  static HolidaySpecification ourLadyAparecida(int year) {
        return HolidaySpecification(
          date: DateTime(year, 10, 12),
          englishName: "Our Lady of Aparecida",
          localName: "Nossa Senhora Aparecida",
          holidayTypes: [HolidayType.Religious],
          subdivisionCodes: ['BR'],
        );
  }

  static HolidaySpecification christmasDay(int year) {
        return HolidaySpecification(
          date: DateTime(year, 12, 25),
          englishName: "Christmas Day",
          localName: "Natal",
          holidayTypes: [HolidayType.Religious],
          subdivisionCodes: ['BR'],
        );
  }

  static HolidaySpecification ourLadyVitoria(int year) {
        return HolidaySpecification(
          date: DateTime(year, 9, 8),
          englishName: "Our Lady of Vitoria",
          localName: "Nossa Senhora da Vitória",
          holidayTypes: [HolidayType.Religious],
          subdivisionCodes: ['BR-ES-VIX'],
        );
  }

  /// Retorna todos os feriados católicos para o ano
  static List<HolidaySpecification> getHolidays(int year) {
    return [
      maundyThursday(year),
      goodFriday(year),
      easterSundayHoliday(year),
      easterMonday(year),
      ascensionDay(year),
      pentecost(year),
      corpusChristi(year),
      allSoulsDay(year),
      christmasDay(year),
      ourLadyAparecida(year),
      ourLadyVitoria(year),
    ];
  }
}