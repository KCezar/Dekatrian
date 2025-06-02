// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get main_title => 'Dekatrian Calendar';

  @override
  String get main_0 => 'Home';

  @override
  String get main_1 => 'Dekatrian';

  @override
  String get main_2 => 'Dev';

  @override
  String get main_3 => 'Settings';

  @override
  String get main_4 => 'A Brief History';

  @override
  String get main_5 => 'Calendar';

  @override
  String get main_6 => 'Development';

  @override
  String get main_7 => 'Dekatrian Calendar';

  @override
  String get domain_models_lunar_date_0 => 'Holiday';

  @override
  String get presentation_screens_tela_configuracoes_0 => 'Settings';

  @override
  String get presentation_screens_tela_configuracoes_1 => 'Holidays';

  @override
  String get presentation_screens_tela_dekatrian_0 => 'Dekatrian Info';

  @override
  String get presentation_screens_tela_dekatrian_1 =>
      'Dekatrian is a calendar devised by a member of the Scicast podcast team:\n\n Roberto Spinelli.';

  @override
  String get presentation_screens_tela_dekatrian_2 =>
      'Visit the Deviante page or the Dekatrian Facebook group to learn more.';

  @override
  String get presentation_screens_tela_dekatrian_3 =>
      'http://www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_4 =>
      'www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_5 =>
      'Dekatrian isn’t a new idea; this form of calendar was used in ancient times, such as in Egypt and Greece. The lunar calendar measures time based on the moon’s phases and is used by many cultures around the world. A more recent attempt to create a lunar calendar was made by Moses Bruines Cotsworth, who created the 13-month Yearal, each month having 28 days.';

  @override
  String get presentation_screens_tela_dekatrian_6 => 'Why adopt Dekatrian?';

  @override
  String get presentation_screens_tela_dekatrian_7 =>
      'The Gregorian calendar we use today has several problems: months vary in length (28, 30 or 31 days), dates shift weekdays each year, and leap-year corrections are complex. Its structure was shaped by historical political decisions rather than logical or natural patterns. Dekatrian fixes these distortions by offering equal-length months, easier planning, and better alignment with natural cycles.';

  @override
  String get presentation_screens_tela_desenvolvimento_0 => 'Development Info';

  @override
  String get presentation_screens_tela_desenvolvimento_1 =>
      'This app is being developed by ';

  @override
  String get presentation_screens_tela_desenvolvimento_1_1 =>
      '. This application is maintained and distributed by the company ';

  @override
  String get presentation_screens_tela_desenvolvimento_2 =>
      '. For feedback or contact, email ';

  @override
  String get presentation_screens_tela_desenvolvimento_3 =>
      'This app was inspired by the Python Dekatrian app by Lario Diniz—an excellent, well-written application.';

  @override
  String get presentation_screens_tela_desenvolvimento_4 => 'Repository: ';

  @override
  String get presentation_screens_tela_desenvolvimento_5 =>
      'One day I switched phones and the app was no longer available in the Play Store, so I decided to build a Flutter version.\n\nThanks to Lario Diniz for the inspiration and source code that helped me understand how Dekatrian works.\n\nI’ll do as Lario did and license this project under MIT so anyone can use Dekatrian’s source code to study or build their own version.\n\n';

  @override
  String presentation_screens_tela_desenvolvimento_6(String version) {
    return 'App version: $version';
  }

  @override
  String get presentation_screens_tela_desenvolvimento_7 =>
      'Technologies used in development:';

  @override
  String presentation_screens_tela_feriados_0(String error) {
    return 'Error loading: $error';
  }

  @override
  String get presentation_screens_tela_feriados_1 => 'Holidays';

  @override
  String get presentation_screens_tela_feriados_2 => 'Search tasks...';

  @override
  String get presentation_screens_tela_feriados_3 => 'No saved preference';

  @override
  String get presentation_screens_tela_feriados_4 => 'New';

  @override
  String get presentation_screens_tela_inicial_0 => 'Day';

  @override
  String get presentation_screens_tela_inicial_1 => 'Month';

  @override
  String get presentation_screens_tela_inicial_2 => 'Year';

  @override
  String get presentation_screens_tela_novo_feriado_0 => 'New Holiday';

  @override
  String get presentation_screens_tela_novo_feriado_1 => 'Search';

  @override
  String get presentation_screens_tela_novo_feriado_2 => 'Country';

  @override
  String get presentation_screens_tela_novo_feriado_3 => 'Region';

  @override
  String get presentation_screens_tela_novo_feriado_4 => 'Religion';

  @override
  String get presentation_screens_tela_novo_feriado_5 =>
      'Preferences saved successfully!';

  @override
  String get presentation_screens_tela_novo_feriado_6 => 'Save';

  @override
  String get presentation_screens_tela_novo_feriado_7 => 'None';

  @override
  String get presentation_widgets_dia_calendario_0 => 'Saturday – weekend';

  @override
  String get presentation_widgets_dia_calendario_1 => 'Sunday – weekend';

  @override
  String presentation_widgets_dia_calendario_2(String n) {
    return '(HD)oliday: $n';
  }

  @override
  String get presentation_widgets_dia_calendario_3 => 'WE';

  @override
  String get presentation_widgets_dia_calendario_4 => 'HD';

  @override
  String get providers_country_brazil_holiday_providers_0 => 'New Year’s Day';

  @override
  String get providers_country_brazil_holiday_providers_1 => 'Tiradentes Day';

  @override
  String get providers_country_brazil_holiday_providers_2 => 'Labor Day';

  @override
  String get providers_country_brazil_holiday_providers_3 =>
      'Constitutionalist Revolution of 1932';

  @override
  String get providers_country_brazil_holiday_providers_4 => 'Independence Day';

  @override
  String get providers_country_brazil_holiday_providers_5 =>
      'Republic Proclamation Day';

  @override
  String get providers_country_brazil_holiday_providers_6 => 'Carnival';

  @override
  String get providers_country_brazil_holiday_providers_7 => 'Carnival';

  @override
  String get providers_country_brazil_holiday_providers_8 =>
      'Espírito Santo State Anniversary';

  @override
  String get providers_country_brazil_holiday_providers_9 =>
      'Black Consciousness Day';

  @override
  String get providers_country_argentina_holiday_providers_0 =>
      'New Year\'s Day';

  @override
  String get providers_country_argentina_holiday_providers_1 => 'Carnival';

  @override
  String get providers_country_argentina_holiday_providers_2 => 'Carnival';

  @override
  String get providers_country_argentina_holiday_providers_3 =>
      'Day of Remembrance for Truth and Justice';

  @override
  String get providers_country_argentina_holiday_providers_4 =>
      'Day of the Veterans and Fallen of the Malvinas War';

  @override
  String get providers_country_argentina_holiday_providers_5 => 'Labour Day';

  @override
  String get providers_country_argentina_holiday_providers_6 =>
      'May Revolution';

  @override
  String get providers_country_argentina_holiday_providers_7 =>
      'Anniversary of the Passing of General Martín Miguel de Güemes';

  @override
  String get providers_country_argentina_holiday_providers_8 =>
      'General Manuel Belgrano Memorial Day';

  @override
  String get providers_country_argentina_holiday_providers_9 =>
      'Independence Day';

  @override
  String get providers_country_argentina_holiday_providers_10 =>
      'General José de San Martín Memorial Day';

  @override
  String get providers_country_argentina_holiday_providers_11 =>
      'Day of Respect for Cultural Diversity';

  @override
  String get providers_country_argentina_holiday_providers_12 =>
      'National Sovereignty Day';

  @override
  String get providers_country_argentina_holiday_providers_13 =>
      'Immaculate Conception Day';

  @override
  String get providers_country_argentina_holiday_providers_14 =>
      'Christmas Day';

  @override
  String get providers_country_bolivia_holiday_providers_0 => 'New Year\'s Day';

  @override
  String get providers_country_bolivia_holiday_providers_1 =>
      'Plurinational State Foundation Day';

  @override
  String get providers_country_bolivia_holiday_providers_2 => 'Carnival Monday';

  @override
  String get providers_country_bolivia_holiday_providers_3 =>
      'Carnival Tuesday';

  @override
  String get providers_country_bolivia_holiday_providers_4 => 'Labour Day';

  @override
  String get providers_country_bolivia_holiday_providers_5 => 'Aymara New Year';

  @override
  String get providers_country_bolivia_holiday_providers_6 =>
      'Independence Day';

  @override
  String get providers_country_bolivia_holiday_providers_7 => 'All Souls\' Day';

  @override
  String get providers_country_bolivia_holiday_providers_8 => 'Christmas Day';

  @override
  String get providers_country_china_holiday_providers_0 => 'Chinese New Year';

  @override
  String get providers_country_china_holiday_providers_1 =>
      'Qingming Festival (Tomb-Sweeping Day)';

  @override
  String get providers_country_china_holiday_providers_2 =>
      'International Workers\' Day';

  @override
  String get providers_country_china_holiday_providers_3 =>
      'Dragon Boat Festival';

  @override
  String get providers_country_china_holiday_providers_4 =>
      'Mid-Autumn Festival';

  @override
  String get providers_country_china_holiday_providers_5 => 'National Day';

  @override
  String get providers_country_colombia_holiday_providers_0 =>
      'New Year\'s Day';

  @override
  String get providers_country_colombia_holiday_providers_1 => 'Epiphany';

  @override
  String get providers_country_colombia_holiday_providers_2 =>
      'Saint Joseph\'s Day';

  @override
  String get providers_country_colombia_holiday_providers_3 =>
      'Maundy Thursday';

  @override
  String get providers_country_colombia_holiday_providers_4 => 'Good Friday';

  @override
  String get providers_country_colombia_holiday_providers_5 => 'Labour Day';

  @override
  String get providers_country_colombia_holiday_providers_6 =>
      'Ascension of Jesus Christ';

  @override
  String get providers_country_colombia_holiday_providers_7 => 'Corpus Christi';

  @override
  String get providers_country_colombia_holiday_providers_8 => 'Sacred Heart';

  @override
  String get providers_country_colombia_holiday_providers_9 =>
      'Independence of Colombia';

  @override
  String get providers_country_colombia_holiday_providers_10 =>
      'Battle of Boyacá';

  @override
  String get providers_country_colombia_holiday_providers_11 =>
      'Assumption of Mary';

  @override
  String get providers_country_colombia_holiday_providers_12 => 'Columbus Day';

  @override
  String get providers_country_colombia_holiday_providers_13 =>
      'All Saints\' Day';

  @override
  String get providers_country_colombia_holiday_providers_14 =>
      'Immaculate Conception Day';

  @override
  String get providers_country_colombia_holiday_providers_15 => 'Christmas Day';

  @override
  String get providers_country_french_guiana_holiday_providers_0 =>
      'New Year\'s Day';

  @override
  String get providers_country_french_guiana_holiday_providers_1 =>
      'Labour Day';

  @override
  String get providers_country_french_guiana_holiday_providers_2 =>
      'Victory in Europe Day';

  @override
  String get providers_country_french_guiana_holiday_providers_3 =>
      'Ascension Day';

  @override
  String get providers_country_french_guiana_holiday_providers_4 =>
      'Whit Monday';

  @override
  String get providers_country_french_guiana_holiday_providers_5 =>
      'Bastille Day';

  @override
  String get providers_country_french_guiana_holiday_providers_6 =>
      'Assumption of Mary';

  @override
  String get providers_country_french_guiana_holiday_providers_7 =>
      'All Saints\' Day';

  @override
  String get providers_country_french_guiana_holiday_providers_8 =>
      'Armistice Day';

  @override
  String get providers_country_french_guiana_holiday_providers_9 =>
      'Christmas Day';

  @override
  String get providers_country_guyana_holiday_providers_0 => 'New Year\'s Day';

  @override
  String get providers_country_guyana_holiday_providers_1 => 'Republic Day';

  @override
  String get providers_country_guyana_holiday_providers_2 => 'Phagwah';

  @override
  String get providers_country_guyana_holiday_providers_3 => 'Good Friday';

  @override
  String get providers_country_guyana_holiday_providers_4 => 'Easter Monday';

  @override
  String get providers_country_guyana_holiday_providers_5 => 'Labour Day';

  @override
  String get providers_country_guyana_holiday_providers_6 => 'Arrival Day';

  @override
  String get providers_country_guyana_holiday_providers_7 => 'Independence Day';

  @override
  String get providers_country_guyana_holiday_providers_8 => 'CARICOM Day';

  @override
  String get providers_country_guyana_holiday_providers_9 => 'Emancipation Day';

  @override
  String get providers_country_guyana_holiday_providers_10 => 'Deepavali';

  @override
  String get providers_country_guyana_holiday_providers_11 => 'Christmas Day';

  @override
  String get providers_country_guyana_holiday_providers_12 => 'Boxing Day';

  @override
  String get providers_country_guyana_holiday_providers_13 => 'Youman-Nabi';

  @override
  String get providers_country_guyana_holiday_providers_14 => 'Eid-ul-Adha';

  @override
  String get providers_country_india_holiday_providers_0 => 'Republic Day';

  @override
  String get providers_country_india_holiday_providers_1 => 'Ambedkar Jayanti';

  @override
  String get providers_country_india_holiday_providers_2 => 'Independence Day';

  @override
  String get providers_country_india_holiday_providers_3 => 'Gandhi Jayanti';

  @override
  String get providers_country_japan_holiday_providers_0 => 'New Year\'s Day';

  @override
  String get providers_country_japan_holiday_providers_1 => 'Coming of Age Day';

  @override
  String get providers_country_japan_holiday_providers_2 => 'Foundation Day';

  @override
  String get providers_country_japan_holiday_providers_3 => 'Shōwa Day';

  @override
  String get providers_country_japan_holiday_providers_4 =>
      'Constitution Memorial Day';

  @override
  String get providers_country_japan_holiday_providers_5 => 'Greenery Day';

  @override
  String get providers_country_japan_holiday_providers_6 => 'Children\'s Day';

  @override
  String get providers_country_japan_holiday_providers_7 => 'Marine Day';

  @override
  String get providers_country_japan_holiday_providers_8 => 'Mountain Day';

  @override
  String get providers_country_japan_holiday_providers_9 =>
      'Respect for the Aged Day';

  @override
  String get providers_country_japan_holiday_providers_10 => 'Culture Day';

  @override
  String get providers_country_japan_holiday_providers_11 =>
      'Labour Thanksgiving Day';

  @override
  String get providers_country_japan_holiday_providers_12 =>
      'The Emperor\'s Birthday Tenchobushi';

  @override
  String get providers_country_japan_holiday_providers_13 =>
      'The Emperor\'s Birthday';

  @override
  String get providers_country_japan_holiday_providers_14 =>
      'Health and Sports Day';

  @override
  String get providers_country_japan_holiday_providers_15 => 'Sports Day';

  @override
  String get providers_country_japan_holiday_providers_16 =>
      'Vernal Equinox Day';

  @override
  String get providers_country_japan_holiday_providers_17 =>
      'Autumnal Equinox Day';

  @override
  String get providers_country_paraguay_holiday_providers_0 =>
      'New Year\'s Day';

  @override
  String get providers_country_paraguay_holiday_providers_1 => 'Heroes\' Day';

  @override
  String get providers_country_paraguay_holiday_providers_2 => 'Labour Day';

  @override
  String get providers_country_paraguay_holiday_providers_3 =>
      'Paraguayan Independence';

  @override
  String get providers_country_paraguay_holiday_providers_4 =>
      'Paraguayan Independence';

  @override
  String get providers_country_paraguay_holiday_providers_5 =>
      'Chaco Armistice';

  @override
  String get providers_country_paraguay_holiday_providers_6 =>
      'Founding of Asunción';

  @override
  String get providers_country_paraguay_holiday_providers_7 =>
      'Boquerón Battle Victory Day';

  @override
  String get providers_country_paraguay_holiday_providers_8 =>
      'Virgin of Caacupé';

  @override
  String get providers_country_paraguay_holiday_providers_9 => 'Christmas Day';

  @override
  String get providers_country_peru_holiday_providers_0 => 'New Year\'s Day';

  @override
  String get providers_country_peru_holiday_providers_1 => 'Holy Thursday';

  @override
  String get providers_country_peru_holiday_providers_2 =>
      'International Workers\' Day';

  @override
  String get providers_country_peru_holiday_providers_3 =>
      'St. Peter and St. Paul';

  @override
  String get providers_country_peru_holiday_providers_4 => 'Independence Day';

  @override
  String get providers_country_peru_holiday_providers_5 => 'Independence Day';

  @override
  String get providers_country_peru_holiday_providers_6 => 'Santa Rosa de Lima';

  @override
  String get providers_country_peru_holiday_providers_7 => 'Battle of Angamos';

  @override
  String get providers_country_peru_holiday_providers_8 => 'All Saints\' Day';

  @override
  String get providers_country_peru_holiday_providers_9 =>
      'Immaculate Conception';

  @override
  String get providers_country_peru_holiday_providers_10 => 'Christmas Day';

  @override
  String get providers_country_russia_holiday_providers_0 => 'New Year\'s Day';

  @override
  String get providers_country_russia_holiday_providers_1 => 'New Year holiday';

  @override
  String get providers_country_russia_holiday_providers_2 => 'New Year holiday';

  @override
  String get providers_country_russia_holiday_providers_3 => 'New Year holiday';

  @override
  String get providers_country_russia_holiday_providers_4 => 'New Year holiday';

  @override
  String get providers_country_russia_holiday_providers_5 => 'New Year holiday';

  @override
  String get providers_country_russia_holiday_providers_6 =>
      'Orthodox Christmas Day';

  @override
  String get providers_country_russia_holiday_providers_7 =>
      'Defender of the Fatherland Day';

  @override
  String get providers_country_russia_holiday_providers_8 =>
      'International Women\'s Day';

  @override
  String get providers_country_russia_holiday_providers_9 => 'Labour Day';

  @override
  String get providers_country_russia_holiday_providers_10 => 'Victory Day';

  @override
  String get providers_country_russia_holiday_providers_11 => 'Russia Day';

  @override
  String get providers_country_russia_holiday_providers_12 => 'Unity Day';

  @override
  String get providers_country_spain_holiday_providers_0 => 'Epiphany';

  @override
  String get providers_country_spain_holiday_providers_1 => 'Labour Day';

  @override
  String get providers_country_spain_holiday_providers_2 => 'National Day';

  @override
  String get providers_country_spain_holiday_providers_3 => 'All Saints Day';

  @override
  String get providers_country_spain_holiday_providers_4 => 'Constitution Day';

  @override
  String get providers_country_suriname_holiday_providers_0 =>
      'New Year\'s Day';

  @override
  String get providers_country_suriname_holiday_providers_1 =>
      'Chinese New Year';

  @override
  String get providers_country_suriname_holiday_providers_2 =>
      'Phagwah (Holi Phagwa)';

  @override
  String get providers_country_suriname_holiday_providers_3 => 'Eid al-Fitr';

  @override
  String get providers_country_suriname_holiday_providers_4 => 'Labour Day';

  @override
  String get providers_country_suriname_holiday_providers_5 => 'Eid al-Adha';

  @override
  String get providers_country_suriname_holiday_providers_6 =>
      'Emancipation Day (Ketikoti)';

  @override
  String get providers_country_suriname_holiday_providers_7 =>
      'Indigenous People\'s Day';

  @override
  String get providers_country_suriname_holiday_providers_8 =>
      'Day of the Maroons';

  @override
  String get providers_country_suriname_holiday_providers_9 => 'Diwali';

  @override
  String get providers_country_suriname_holiday_providers_10 =>
      'Independence Day';

  @override
  String get providers_country_suriname_holiday_providers_11 => 'Christmas Day';

  @override
  String get providers_country_suriname_holiday_providers_12 => 'Boxing Day';

  @override
  String get providers_country_uruguay_holiday_providers_0 => 'New Year\'s Day';

  @override
  String get providers_country_uruguay_holiday_providers_1 => 'Children\'s Day';

  @override
  String get providers_country_uruguay_holiday_providers_2 =>
      'Landing of the 33 Patriots Day';

  @override
  String get providers_country_uruguay_holiday_providers_3 =>
      'International Workers\' Day';

  @override
  String get providers_country_uruguay_holiday_providers_4 =>
      'Battle of Las Piedras';

  @override
  String get providers_country_uruguay_holiday_providers_5 =>
      'Birthday of José Gervasio Artigas and Never Again Day';

  @override
  String get providers_country_uruguay_holiday_providers_6 =>
      'Constitution Day';

  @override
  String get providers_country_uruguay_holiday_providers_7 =>
      'Independence Day';

  @override
  String get providers_country_uruguay_holiday_providers_8 => 'Day of the Race';

  @override
  String get providers_country_uruguay_holiday_providers_9 =>
      'Deceased Ones Day';

  @override
  String get providers_country_uruguay_holiday_providers_10 => 'Christmas Day';

  @override
  String get providers_country_uruguay_holiday_providers_11 => 'Carnival';

  @override
  String get providers_country_uruguay_holiday_providers_12 => 'Carnival';

  @override
  String get providers_country_united_states_holiday_providers_0 =>
      'New Year\'s Day';

  @override
  String get providers_country_united_states_holiday_providers_1 =>
      'Martin Luther King, Jr. Day';

  @override
  String get providers_country_united_states_holiday_providers_2 =>
      'Presidents\' Day';

  @override
  String get providers_country_united_states_holiday_providers_3 =>
      'Memorial Day';

  @override
  String get providers_country_united_states_holiday_providers_4 =>
      'Juneteenth National Independence Day';

  @override
  String get providers_country_united_states_holiday_providers_5 =>
      'Independence Day';

  @override
  String get providers_country_united_states_holiday_providers_6 => 'Labor Day';

  @override
  String get providers_country_united_states_holiday_providers_7 =>
      'Columbus Day';

  @override
  String get providers_country_united_states_holiday_providers_8 =>
      'Veterans Day';

  @override
  String get providers_country_united_states_holiday_providers_9 =>
      'Thanksgiving Day';

  @override
  String get providers_country_united_states_holiday_providers_10 =>
      'Christmas Day';

  @override
  String get providers_country_united_states_holiday_providers_11 =>
      'Truman Day';

  @override
  String get providers_country_united_states_holiday_providers_12 =>
      'Indigenous Peoples Day';

  @override
  String get providers_country_united_states_holiday_providers_13 =>
      'Lincoln\'s Birthday';

  @override
  String get providers_religion_catholic_providers_0 => 'All Saints\' Day';

  @override
  String get providers_religion_catholic_providers_1 => 'All Souls\' Day';

  @override
  String get providers_religion_catholic_providers_2 => 'Ascension Day';

  @override
  String get providers_religion_catholic_providers_3 => 'Assumption Day';

  @override
  String get providers_religion_catholic_providers_4 => 'Christmas Day';

  @override
  String get providers_religion_catholic_providers_5 => 'Corpus Christi';

  @override
  String get providers_religion_catholic_providers_6 => 'Easter Monday';

  @override
  String get providers_religion_catholic_providers_7 => 'Easter Sunday';

  @override
  String get providers_religion_catholic_providers_8 => 'Epiphany';

  @override
  String get providers_religion_catholic_providers_9 => 'Good Friday';

  @override
  String get providers_religion_catholic_providers_10 =>
      'Immaculate Conception Day';

  @override
  String get providers_religion_catholic_providers_11 => 'Maundy Thursday';

  @override
  String get providers_religion_catholic_providers_12 =>
      'Our Lady of Aparecida';

  @override
  String get providers_religion_catholic_providers_13 => 'Our Lady of Vitoria';

  @override
  String get providers_religion_catholic_providers_14 => 'Pentecost';

  @override
  String get providers_religion_catholic_providers_15 => 'Sacred Heart';

  @override
  String get providers_religion_catholic_providers_16 => 'Saint Joseph\'s Day';

  @override
  String get providers_religion_catholic_providers_17 =>
      'Saint Peter and Saint Paul';

  @override
  String get providers_religion_catholic_providers_18 => 'Santa Rosa de Lima';

  @override
  String get providers_religion_catholic_providers_19 => 'Virgin of Caacupé';

  @override
  String get providers_holiday_providers_0 => 'Brazil';

  @override
  String get providers_holiday_providers_1 => 'Argentina';

  @override
  String get providers_holiday_providers_2 => 'Bolivia';

  @override
  String get providers_holiday_providers_3 => 'Peru';

  @override
  String get providers_holiday_providers_4 => 'Paraguay';

  @override
  String get providers_holiday_providers_5 => 'Colombia';

  @override
  String get providers_holiday_providers_6 => 'French Guiana';

  @override
  String get providers_holiday_providers_7 => 'Suriname';

  @override
  String get providers_holiday_providers_8 => 'Guyana';

  @override
  String get providers_holiday_providers_10 => 'Spain';

  @override
  String get providers_holiday_providers_11 => 'Russia';

  @override
  String get providers_holiday_providers_12 => 'Japan';

  @override
  String get providers_holiday_providers_13 => 'China';

  @override
  String get providers_holiday_providers_14 => 'India';

  @override
  String get providers_holiday_providers_15 => 'Uruguay';

  @override
  String get providers_holiday_providers_16 => 'Catholic';

  @override
  String get providers_holiday_providers_17 => 'United States of America';
}
