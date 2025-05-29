import 'package:dekatrian/domain/models/holiday_specification.dart';
import 'package:dekatrian/domain/models/holiday_type.dart';
import 'package:dekatrian/application/services/translation_service.dart';

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
      localName: TranslationService.instance.tr('providers_religion_catholic_providers_0'),
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR','PE'],
    );
  }

  /// Sexta-feira Santa (Good Friday)
  static HolidaySpecification goodFriday(int year) {
    final date = easterSunday(year).subtract(const Duration(days: 2));
    return HolidaySpecification(
      date: date,
      englishName: 'Good Friday',
      localName: TranslationService.instance.tr('providers_religion_catholic_providers_1'),
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['AR','BR', "US-CT", "US-DE", "US-HI", "US-IN", "US-KY", "US-LA", "US-NC", "US-ND", "US-NJ", "US-TN", "US-TX"],
    );
  }

  /// Domingo de Páscoa (Easter Sunday)
  static HolidaySpecification easterSundayHoliday(int year) {
    final date = easterSunday(year);
    return HolidaySpecification(
      date: date,
      englishName: 'Easter Sunday',
      localName: TranslationService.instance.tr('providers_religion_catholic_providers_2'),
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
      localName: TranslationService.instance.tr('providers_religion_catholic_providers_3'),
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
      localName: TranslationService.instance.tr('providers_religion_catholic_providers_4'),
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['CO','PT','GF'],
    );
  }

  /// Pentecostes (Pentecost)
  static HolidaySpecification pentecost(int year) {
    final date = easterSunday(year).add(const Duration(days: 49));
    return HolidaySpecification(
      date: date,
      englishName: 'Pentecost',
      localName: TranslationService.instance.tr('providers_religion_catholic_providers_5'),
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR','GF'],
    );
  }

  /// Corpus Christi
  static HolidaySpecification corpusChristi(int year) {
    final date = easterSunday(year).add(const Duration(days: 60));
    return HolidaySpecification(
      date: date,
      englishName: 'Corpus Christi',
      localName: TranslationService.instance.tr('providers_religion_catholic_providers_6'),
      holidayTypes: [HolidayType.Religious],
      subdivisionCodes: ['BR','CO'],
    );
  }

  static HolidaySpecification allSoulsDay(int year) {
     return HolidaySpecification(
        date: DateTime(year, 11, 2),
        englishName: "All Souls' Day",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_7"),
        holidayTypes: [HolidayType.Religious],
        subdivisionCodes: ['BR','BO','UY'],
      );
  }

  static HolidaySpecification ourLadyAparecida(int year) {
        return HolidaySpecification(
          date: DateTime(year, 10, 12),
          englishName: "Our Lady of Aparecida",
          localName: TranslationService.instance.tr("providers_religion_catholic_providers_8"),
          holidayTypes: [HolidayType.Religious],
          subdivisionCodes: ['BR'],
        );
  }

  static HolidaySpecification christmasDay(int year) {
        return HolidaySpecification(
          date: DateTime(year, 12, 25),
          englishName: "Christmas Day",
          localName: TranslationService.instance.tr("providers_religion_catholic_providers_9"),
          holidayTypes: [HolidayType.Religious],
          subdivisionCodes: ['AR','BR','BO','GF','GY','PE','PY','UY','US','SR'],
        );
  }

  static HolidaySpecification ourLadyVitoria(int year) {
        return HolidaySpecification(
          date: DateTime(year, 9, 8),
          englishName: "Our Lady of Vitoria",
          localName: TranslationService.instance.tr("providers_religion_catholic_providers_10"),
          holidayTypes: [HolidayType.Religious],
          subdivisionCodes: ['BR-ES-VIX'],
        );
  }

  static HolidaySpecification immaculateConceptionDay(int year) {
        return HolidaySpecification(
        date: DateTime(year, 12, 8),
        englishName: "Immaculate Conception Day",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_11"),
        subdivisionCodes: ['AR','CO','PE'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }

  static HolidaySpecification epiphany(int year) {
        return HolidaySpecification(
        date: DateTime(year, 1, 6),
        englishName: "Epiphany",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_12"),
        subdivisionCodes: ['CO','ES'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }

  static HolidaySpecification saintJosephDay(int year) {
        return HolidaySpecification(
        date: DateTime(year, 3, 19),
        englishName: "Saint Joseph's Day",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_13"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }

  static HolidaySpecification sacredHeart(int year) {
        return HolidaySpecification(
        date: easterSunday(year).add(const Duration(days: 680)),
        englishName: "Sacred Heart",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_14"),
        subdivisionCodes: ['CO'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }

  static HolidaySpecification saintPeterSaintPaul(int year) {
        return HolidaySpecification(
        date: DateTime(year, 6, 29),
        englishName: "Saint Peter and Saint Paul",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_15"),
        subdivisionCodes: ['CO','PE'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }

  static HolidaySpecification assumptionDay(int year) {
        return HolidaySpecification(
        date: DateTime(year, 8, 15),
        englishName: "Assumption Day",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_16"),
        subdivisionCodes: ['CO','GF'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }

  static HolidaySpecification allSaintsDay(int year) {
        return HolidaySpecification(
        date: DateTime(year, 11, 1),
        englishName: "All Saints' Day",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_17"),
        subdivisionCodes: ['CO','GF','PE','ES'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }


  static HolidaySpecification virginCaacupe(int year) {
        return HolidaySpecification(
        date: DateTime(year, 12, 8),
        englishName: "Virgin of Caacupé",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_18"),
        subdivisionCodes: ['PY'],
        holidayTypes: [HolidayType.Public],
      );
  }

  static HolidaySpecification santaRosaLima(int year) {
        return HolidaySpecification(
        date: DateTime(year, 8, 30),
        englishName: "Santa Rosa de Lima",
        localName: TranslationService.instance.tr("providers_religion_catholic_providers_19"),
        subdivisionCodes: ['PE'],
        holidayTypes: [HolidayType.Public, HolidayType.Religious], // feriado religioso
      );
  }

  /// Retorna todos os feriados católicos para o ano
  static List<HolidaySpecification> getHolidays(int year) {
    return [
        allSaintsDay(year),
        allSoulsDay(year),
        ascensionDay(year),
        assumptionDay(year),
        christmasDay(year),
        corpusChristi(year),
        easterMonday(year),
        easterSundayHoliday(year),
        epiphany(year),
        goodFriday(year),
        immaculateConceptionDay(year),
        maundyThursday(year),
        ourLadyAparecida(year),
        ourLadyVitoria(year),
        pentecost(year),
        sacredHeart(year),
        saintJosephDay(year),
        saintPeterSaintPaul(year),
        santaRosaLima(year),
        virginCaacupe(year),
      // Feriados católicos adicionais
    ];
  }
}