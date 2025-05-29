class DateHelper {
  static DateTime findNthWeekday({
    required int year,
    required int month,
    required int weekday,      // DateTime.monday…
    required int occurrence,    // 1ª, 2ª, 3ª…
  }) {
    final first = DateTime(year, month, 1);
    final offset = (weekday - first.weekday + 7) % 7;
    return first.add(Duration(days: offset + (occurrence - 1) * 7));
  }
}