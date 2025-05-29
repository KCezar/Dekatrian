// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get main_title => 'Календарь Декатриан';

  @override
  String get main_0 => 'Главная';

  @override
  String get main_1 => 'Dekatrian';

  @override
  String get main_2 => 'Разработка';

  @override
  String get main_3 => 'Настройки';

  @override
  String get main_4 => 'Краткая история';

  @override
  String get main_5 => 'Календарь';

  @override
  String get main_6 => 'Разработка';

  @override
  String get main_7 => 'Календарь Декатриан';

  @override
  String get domain_models_lunar_date_0 => 'Праздник';

  @override
  String get presentation_screens_tela_configuracoes_0 => 'Настройки';

  @override
  String get presentation_screens_tela_configuracoes_1 => 'Праздники';

  @override
  String get presentation_screens_tela_dekatrian_0 => 'Информация о Dekatrian';

  @override
  String get presentation_screens_tela_dekatrian_1 =>
      'Dekatrian — это календарь, разработанный участником команды подкаста Scicast Роберто Спинелли.';

  @override
  String get presentation_screens_tela_dekatrian_2 =>
      'Посетите страницу Deviante или группу Dekatrian в Facebook, чтобы узнать больше.';

  @override
  String get presentation_screens_tela_dekatrian_3 =>
      'http://www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_4 =>
      'www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_5 =>
      'Dekatrian — не новая идея; такую форму календаря использовали в Древнем Египте и Греции. Лунный календарь измеряет время по фазам Луны и используется во многих культурах мира. Недавняя попытка — Yearal с 13 месяцами по 28 дней, предложенная Моисеем Бруайнсом Котсуортом.';

  @override
  String get presentation_screens_tela_dekatrian_6 =>
      'Почему стоит выбрать Dekatrian?';

  @override
  String get presentation_screens_tela_dekatrian_7 =>
      'Григорианский календарь, который мы используем сегодня, имеет несколько проблем: месяцы разной длины (28, 30 или 31 день), даты смещаются по дням недели каждый год, а корректировки високосных лет сложны. Его структура формировалась под влиянием исторических политических решений, а не по естественным или логичным принципам. Dekatrian исправляет эти искажения, предлагая равные по длине месяцы, упрощая планирование и обеспечивая лучшее соответствие природным циклам.';

  @override
  String get presentation_screens_tela_desenvolvimento_0 =>
      'Информация о разработке';

  @override
  String get presentation_screens_tela_desenvolvimento_1 =>
      'Это приложение разрабатывается ';

  @override
  String get presentation_screens_tela_desenvolvimento_2 =>
      '. Для отзывов или контактов пишите на почту ';

  @override
  String get presentation_screens_tela_desenvolvimento_3 =>
      'Это приложение было вдохновлено Python-версией Dekatrian от Ларио Диниза — замечательное приложение с отличным кодом.';

  @override
  String get presentation_screens_tela_desenvolvimento_4 => 'Репозиторий: ';

  @override
  String get presentation_screens_tela_desenvolvimento_5 =>
      'Однажды я сменил телефон, и приложение пропало в Play Store, поэтому я решил сделать версию на Flutter.\n\nБлагодарю Ларио Диниза за вдохновение и исходный код Dekatrian, который помог мне понять работу календаря.\n\nКак и Ларио, я выпущу этот проект под лицензией MIT, чтобы любой мог изучать исходный код Dekatrian или создавать собственную версию.\n\n';

  @override
  String presentation_screens_tela_desenvolvimento_6(String version) {
    return 'Версия приложения: $version';
  }

  @override
  String get presentation_screens_tela_desenvolvimento_7 =>
      'Технологии, использованные в разработке:';

  @override
  String presentation_screens_tela_feriados_0(String error) {
    return 'Ошибка загрузки: $error';
  }

  @override
  String get presentation_screens_tela_feriados_1 => 'Праздники';

  @override
  String get presentation_screens_tela_feriados_2 => 'Поиск задач...';

  @override
  String get presentation_screens_tela_feriados_3 => 'Нет сохраненных настроек';

  @override
  String get presentation_screens_tela_feriados_4 => 'Новый';

  @override
  String get presentation_screens_tela_inicial_0 => 'День';

  @override
  String get presentation_screens_tela_inicial_1 => 'Месяц';

  @override
  String get presentation_screens_tela_inicial_2 => 'Год';

  @override
  String get presentation_screens_tela_novo_feriado_0 => 'Новый праздник';

  @override
  String get presentation_screens_tela_novo_feriado_1 => 'Поиск';

  @override
  String get presentation_screens_tela_novo_feriado_2 => 'Страна';

  @override
  String get presentation_screens_tela_novo_feriado_3 => 'Регион';

  @override
  String get presentation_screens_tela_novo_feriado_4 => 'Религия';

  @override
  String get presentation_screens_tela_novo_feriado_5 =>
      'Настройки успешно сохранены!';

  @override
  String get presentation_screens_tela_novo_feriado_6 => 'Сохранить';

  @override
  String get presentation_screens_tela_novo_feriado_7 => 'Нет';

  @override
  String get presentation_widgets_dia_calendario_0 => 'Суббота — выходной';

  @override
  String get presentation_widgets_dia_calendario_1 => 'Воскресенье — выходной';

  @override
  String presentation_widgets_dia_calendario_2(String n) {
    return '(Праздник): $n';
  }

  @override
  String get presentation_widgets_dia_calendario_3 => 'выходной';

  @override
  String get presentation_widgets_dia_calendario_4 => 'праздник';

  @override
  String get providers_country_brazil_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_brazil_holiday_providers_1 => 'День Тирадентеса';

  @override
  String get providers_country_brazil_holiday_providers_2 => 'День труда';

  @override
  String get providers_country_brazil_holiday_providers_3 =>
      'День Конституционной революции 1932 года';

  @override
  String get providers_country_brazil_holiday_providers_4 =>
      'День независимости';

  @override
  String get providers_country_brazil_holiday_providers_5 =>
      'День провозглашения республики';

  @override
  String get providers_country_brazil_holiday_providers_6 => 'Карнавал';

  @override
  String get providers_country_brazil_holiday_providers_7 => 'Карнавал';

  @override
  String get providers_country_brazil_holiday_providers_8 =>
      'День основания штата Эспириту-Санту';

  @override
  String get providers_country_brazil_holiday_providers_9 =>
      'День чёрного сознания';

  @override
  String get providers_country_argentina_holiday_providers_0 =>
      'День Нового года';

  @override
  String get providers_country_argentina_holiday_providers_1 => 'Карнавал';

  @override
  String get providers_country_argentina_holiday_providers_2 => 'Карнавал';

  @override
  String get providers_country_argentina_holiday_providers_3 =>
      'День памяти истины и справедливости';

  @override
  String get providers_country_argentina_holiday_providers_4 =>
      'День ветеранов и погибших во время Фолклендской войны';

  @override
  String get providers_country_argentina_holiday_providers_5 => 'День труда';

  @override
  String get providers_country_argentina_holiday_providers_6 =>
      'Майская революция';

  @override
  String get providers_country_argentina_holiday_providers_7 =>
      'Годовщина со дня кончины генерала Мартин Мигель де Гемес';

  @override
  String get providers_country_argentina_holiday_providers_8 =>
      'День памяти генерала Мануэля Бельграно';

  @override
  String get providers_country_argentina_holiday_providers_9 =>
      'День независимости';

  @override
  String get providers_country_argentina_holiday_providers_10 =>
      'День памяти генерала Хосе де Сан-Мартина';

  @override
  String get providers_country_argentina_holiday_providers_11 =>
      'День уважения культурного разнообразия';

  @override
  String get providers_country_argentina_holiday_providers_12 =>
      'День национального суверенитета';

  @override
  String get providers_country_argentina_holiday_providers_13 =>
      'Праздник Непорочного Зачатия';

  @override
  String get providers_country_argentina_holiday_providers_14 => 'Рождество';

  @override
  String get providers_country_bolivia_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_bolivia_holiday_providers_1 =>
      'День основания многонационального государства';

  @override
  String get providers_country_bolivia_holiday_providers_2 =>
      'Карнавальный понедельник';

  @override
  String get providers_country_bolivia_holiday_providers_3 =>
      'Карнавальный вторник';

  @override
  String get providers_country_bolivia_holiday_providers_4 => 'День труда';

  @override
  String get providers_country_bolivia_holiday_providers_5 =>
      'Аймара Новый год';

  @override
  String get providers_country_bolivia_holiday_providers_6 =>
      'День независимости';

  @override
  String get providers_country_bolivia_holiday_providers_7 => 'День всех душ';

  @override
  String get providers_country_bolivia_holiday_providers_8 => 'Рождество';

  @override
  String get providers_country_china_holiday_providers_0 =>
      'Китайский Новый год';

  @override
  String get providers_country_china_holiday_providers_1 =>
      'Праздник Цинмин (День наведения порядка на могилах)';

  @override
  String get providers_country_china_holiday_providers_2 =>
      'Международный день трудящихся';

  @override
  String get providers_country_china_holiday_providers_3 =>
      'Праздник драконьих лодок';

  @override
  String get providers_country_china_holiday_providers_4 =>
      'Праздник середины осени';

  @override
  String get providers_country_china_holiday_providers_5 => 'Национальный день';

  @override
  String get providers_country_colombia_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_colombia_holiday_providers_1 => 'Богоявление';

  @override
  String get providers_country_colombia_holiday_providers_2 =>
      'День Святого Иосифа';

  @override
  String get providers_country_colombia_holiday_providers_3 =>
      'Великий четверг';

  @override
  String get providers_country_colombia_holiday_providers_4 =>
      'Великая пятница';

  @override
  String get providers_country_colombia_holiday_providers_5 => 'День труда';

  @override
  String get providers_country_colombia_holiday_providers_6 =>
      'Вознесение Господне';

  @override
  String get providers_country_colombia_holiday_providers_7 =>
      'Праздник тела Христова';

  @override
  String get providers_country_colombia_holiday_providers_8 =>
      'Праздник Сердца Иисуса';

  @override
  String get providers_country_colombia_holiday_providers_9 =>
      'День независимости Колумбии';

  @override
  String get providers_country_colombia_holiday_providers_10 =>
      'День битвы при Бояке';

  @override
  String get providers_country_colombia_holiday_providers_11 =>
      'Успение Богородицы';

  @override
  String get providers_country_colombia_holiday_providers_12 => 'День Колумба';

  @override
  String get providers_country_colombia_holiday_providers_13 =>
      'День всех святых';

  @override
  String get providers_country_colombia_holiday_providers_14 =>
      'Праздник Непорочного Зачатия';

  @override
  String get providers_country_colombia_holiday_providers_15 => 'Рождество';

  @override
  String get providers_country_french_guiana_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_french_guiana_holiday_providers_1 =>
      'День труда';

  @override
  String get providers_country_french_guiana_holiday_providers_2 =>
      'День Победы в Европе';

  @override
  String get providers_country_french_guiana_holiday_providers_3 =>
      'Вознесение';

  @override
  String get providers_country_french_guiana_holiday_providers_4 =>
      'Понедельник Троицы';

  @override
  String get providers_country_french_guiana_holiday_providers_5 =>
      'День взятия Бастилии';

  @override
  String get providers_country_french_guiana_holiday_providers_6 =>
      'Успение Богородицы';

  @override
  String get providers_country_french_guiana_holiday_providers_7 =>
      'День всех святых';

  @override
  String get providers_country_french_guiana_holiday_providers_8 =>
      'День перемирия';

  @override
  String get providers_country_french_guiana_holiday_providers_9 => 'Рождество';

  @override
  String get providers_country_guyana_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_guyana_holiday_providers_1 => 'День Республики';

  @override
  String get providers_country_guyana_holiday_providers_2 => 'Фагва';

  @override
  String get providers_country_guyana_holiday_providers_3 =>
      'Страстная пятница';

  @override
  String get providers_country_guyana_holiday_providers_4 =>
      'Пасхальный понедельник';

  @override
  String get providers_country_guyana_holiday_providers_5 => 'День труда';

  @override
  String get providers_country_guyana_holiday_providers_6 => 'День прибытия';

  @override
  String get providers_country_guyana_holiday_providers_7 =>
      'День независимости';

  @override
  String get providers_country_guyana_holiday_providers_8 => 'День КАРИКОМ';

  @override
  String get providers_country_guyana_holiday_providers_9 => 'День эмансипации';

  @override
  String get providers_country_guyana_holiday_providers_10 => 'Дивали';

  @override
  String get providers_country_guyana_holiday_providers_11 => 'Рождество';

  @override
  String get providers_country_guyana_holiday_providers_12 => 'День подарков';

  @override
  String get providers_country_guyana_holiday_providers_13 => 'Юман-Наби';

  @override
  String get providers_country_guyana_holiday_providers_14 => 'Ид-аль-Адха';

  @override
  String get providers_country_india_holiday_providers_0 => 'День Республики';

  @override
  String get providers_country_india_holiday_providers_1 => 'Джаянти Амбедкара';

  @override
  String get providers_country_india_holiday_providers_2 =>
      'День независимости';

  @override
  String get providers_country_india_holiday_providers_3 => 'Джаянти Ганди';

  @override
  String get providers_country_japan_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_japan_holiday_providers_1 =>
      'День совершеннолетия';

  @override
  String get providers_country_japan_holiday_providers_2 => 'День основания';

  @override
  String get providers_country_japan_holiday_providers_3 => 'День Сёва';

  @override
  String get providers_country_japan_holiday_providers_4 => 'День Конституции';

  @override
  String get providers_country_japan_holiday_providers_5 => 'День зелени';

  @override
  String get providers_country_japan_holiday_providers_6 => 'День детей';

  @override
  String get providers_country_japan_holiday_providers_7 => 'День моря';

  @override
  String get providers_country_japan_holiday_providers_8 => 'День гор';

  @override
  String get providers_country_japan_holiday_providers_9 =>
      'День уважения к пожилым';

  @override
  String get providers_country_japan_holiday_providers_10 => 'День культуры';

  @override
  String get providers_country_japan_holiday_providers_11 =>
      'День благодарения за труд';

  @override
  String get providers_country_japan_holiday_providers_12 =>
      'День рождения императора Тэнчобуси';

  @override
  String get providers_country_japan_holiday_providers_13 =>
      'День рождения императора';

  @override
  String get providers_country_japan_holiday_providers_14 =>
      'День здоровья и спорта';

  @override
  String get providers_country_japan_holiday_providers_15 => 'День спорта';

  @override
  String get providers_country_japan_holiday_providers_16 =>
      'День весеннего равноденствия';

  @override
  String get providers_country_japan_holiday_providers_17 =>
      'День осеннего равноденствия';

  @override
  String get providers_country_paraguay_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_paraguay_holiday_providers_1 => 'День героев';

  @override
  String get providers_country_paraguay_holiday_providers_2 => 'День труда';

  @override
  String get providers_country_paraguay_holiday_providers_3 =>
      'День независимости Парагвая';

  @override
  String get providers_country_paraguay_holiday_providers_4 =>
      'День независимости Парагвая';

  @override
  String get providers_country_paraguay_holiday_providers_5 =>
      'Перемирие в Чако';

  @override
  String get providers_country_paraguay_holiday_providers_6 =>
      'День основания Асунсьона';

  @override
  String get providers_country_paraguay_holiday_providers_7 =>
      'День победы в битве при Бокероне';

  @override
  String get providers_country_paraguay_holiday_providers_8 =>
      'День Девы Каакипе';

  @override
  String get providers_country_paraguay_holiday_providers_9 => 'Рождество';

  @override
  String get providers_country_peru_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_peru_holiday_providers_1 => 'Страстной четверг';

  @override
  String get providers_country_peru_holiday_providers_2 =>
      'Международный день трудящихся';

  @override
  String get providers_country_peru_holiday_providers_3 =>
      'День св. Петра и Павла';

  @override
  String get providers_country_peru_holiday_providers_4 =>
      'День независимости (1-й день)';

  @override
  String get providers_country_peru_holiday_providers_5 =>
      'День независимости (2-й день)';

  @override
  String get providers_country_peru_holiday_providers_6 =>
      'День святой Розы Лимы';

  @override
  String get providers_country_peru_holiday_providers_7 =>
      'День битвы при Анга́мосе';

  @override
  String get providers_country_peru_holiday_providers_8 => 'День всех святых';

  @override
  String get providers_country_peru_holiday_providers_9 => 'Непорочное зачатие';

  @override
  String get providers_country_peru_holiday_providers_10 => 'Рождество';

  @override
  String get providers_country_russia_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_russia_holiday_providers_1 =>
      'Новогодние каникулы';

  @override
  String get providers_country_russia_holiday_providers_2 =>
      'Новогодние каникулы';

  @override
  String get providers_country_russia_holiday_providers_3 =>
      'Новогодние каникулы';

  @override
  String get providers_country_russia_holiday_providers_4 =>
      'Новогодние каникулы';

  @override
  String get providers_country_russia_holiday_providers_5 =>
      'Новогодние каникулы';

  @override
  String get providers_country_russia_holiday_providers_6 =>
      'Православное Рождество';

  @override
  String get providers_country_russia_holiday_providers_7 =>
      'День защитника Отечества';

  @override
  String get providers_country_russia_holiday_providers_8 =>
      'Международный женский день';

  @override
  String get providers_country_russia_holiday_providers_9 => 'Праздник труда';

  @override
  String get providers_country_russia_holiday_providers_10 => 'День Победы';

  @override
  String get providers_country_russia_holiday_providers_11 => 'День России';

  @override
  String get providers_country_russia_holiday_providers_12 =>
      'День народного единства';

  @override
  String get providers_country_spain_holiday_providers_0 => 'Богоявление';

  @override
  String get providers_country_spain_holiday_providers_1 => 'День труда';

  @override
  String get providers_country_spain_holiday_providers_2 => 'Национальный день';

  @override
  String get providers_country_spain_holiday_providers_3 => 'День всех святых';

  @override
  String get providers_country_spain_holiday_providers_4 => 'День Конституции';

  @override
  String get providers_country_suriname_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_suriname_holiday_providers_1 =>
      'Китайский Новый год';

  @override
  String get providers_country_suriname_holiday_providers_2 =>
      'Фагва (Холи Фагва)';

  @override
  String get providers_country_suriname_holiday_providers_3 => 'Ид аль-Фитр';

  @override
  String get providers_country_suriname_holiday_providers_4 => 'День труда';

  @override
  String get providers_country_suriname_holiday_providers_5 => 'Ид аль-Адха';

  @override
  String get providers_country_suriname_holiday_providers_6 =>
      'День освобождения (Кетикоти)';

  @override
  String get providers_country_suriname_holiday_providers_7 =>
      'День коренных народов';

  @override
  String get providers_country_suriname_holiday_providers_8 => 'День маронов';

  @override
  String get providers_country_suriname_holiday_providers_9 => 'Дивали';

  @override
  String get providers_country_suriname_holiday_providers_10 =>
      'День независимости';

  @override
  String get providers_country_suriname_holiday_providers_11 => 'Рождество';

  @override
  String get providers_country_suriname_holiday_providers_12 => 'День подарков';

  @override
  String get providers_country_uruguay_holiday_providers_0 => 'Новый год';

  @override
  String get providers_country_uruguay_holiday_providers_1 =>
      'День защиты детей';

  @override
  String get providers_country_uruguay_holiday_providers_2 =>
      'День высадки 33 патриотов';

  @override
  String get providers_country_uruguay_holiday_providers_3 =>
      'Международный день труда';

  @override
  String get providers_country_uruguay_holiday_providers_4 =>
      'День битвы при Лас-Пьедрас';

  @override
  String get providers_country_uruguay_holiday_providers_5 =>
      'День рождения Хосе Хервасио Артигаса и День «Никогда больше»';

  @override
  String get providers_country_uruguay_holiday_providers_6 =>
      'День Конституции';

  @override
  String get providers_country_uruguay_holiday_providers_7 =>
      'День независимости';

  @override
  String get providers_country_uruguay_holiday_providers_8 => 'День расы';

  @override
  String get providers_country_uruguay_holiday_providers_9 => 'День усопших';

  @override
  String get providers_country_uruguay_holiday_providers_10 => 'Рождество';

  @override
  String get providers_country_uruguay_holiday_providers_11 => 'Карнавал';

  @override
  String get providers_country_uruguay_holiday_providers_12 => 'Карнавал';

  @override
  String get providers_religion_catholic_providers_0 => 'Страстной четверг';

  @override
  String get providers_religion_catholic_providers_1 => 'Страстная пятница';

  @override
  String get providers_religion_catholic_providers_2 =>
      'Пасхальное воскресенье';

  @override
  String get providers_religion_catholic_providers_3 =>
      'Пасхальный понедельник';

  @override
  String get providers_religion_catholic_providers_4 => 'Вознесение Господне';

  @override
  String get providers_religion_catholic_providers_5 => 'Пятидесятница';

  @override
  String get providers_religion_catholic_providers_6 => 'Тело Христово';

  @override
  String get providers_religion_catholic_providers_7 => 'День всех усопших';

  @override
  String get providers_religion_catholic_providers_8 =>
      'Наша Сеньора Апаресида';

  @override
  String get providers_religion_catholic_providers_9 => 'Рождество';

  @override
  String get providers_religion_catholic_providers_10 => 'Наша Сеньора Победы';

  @override
  String get providers_holiday_providers_0 => 'Бразилия';

  @override
  String get providers_holiday_providers_1 => 'Аргентина';

  @override
  String get providers_holiday_providers_2 => 'Боливия';

  @override
  String get providers_holiday_providers_3 => 'Перу';

  @override
  String get providers_holiday_providers_4 => 'Парагвай';

  @override
  String get providers_holiday_providers_5 => 'Колумбия';

  @override
  String get providers_holiday_providers_6 => 'Французская Гвиана';

  @override
  String get providers_holiday_providers_7 => 'Суринам';

  @override
  String get providers_holiday_providers_8 => 'Гайана';

  @override
  String get providers_holiday_providers_10 => 'Испания';

  @override
  String get providers_holiday_providers_11 => 'Россия';

  @override
  String get providers_holiday_providers_12 => 'Япония';

  @override
  String get providers_holiday_providers_13 => 'Китай';

  @override
  String get providers_holiday_providers_14 => 'Индия';

  @override
  String get providers_holiday_providers_15 => 'Уругвай';

  @override
  String get providers_holiday_providers_16 => 'Католический';
}
