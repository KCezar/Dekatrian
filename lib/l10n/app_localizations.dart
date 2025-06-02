import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('hi'),
    Locale('ja'),
    Locale('pt'),
    Locale('ru'),
    Locale('zh'),
  ];

  /// Titulo da aplicação
  ///
  /// In en, this message translates to:
  /// **'Dekatrian Calendar'**
  String get main_title;

  /// Inicial
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get main_0;

  /// Dekatrian
  ///
  /// In en, this message translates to:
  /// **'Dekatrian'**
  String get main_1;

  /// Dev
  ///
  /// In en, this message translates to:
  /// **'Dev'**
  String get main_2;

  /// Configurações
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get main_3;

  /// Uma Breve História
  ///
  /// In en, this message translates to:
  /// **'A Brief History'**
  String get main_4;

  /// Calendário
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get main_5;

  /// Desenvolvimento
  ///
  /// In en, this message translates to:
  /// **'Development'**
  String get main_6;

  /// Calendário Dekatrian
  ///
  /// In en, this message translates to:
  /// **'Dekatrian Calendar'**
  String get main_7;

  /// Feriado
  ///
  /// In en, this message translates to:
  /// **'Holiday'**
  String get domain_models_lunar_date_0;

  /// Configurações
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get presentation_screens_tela_configuracoes_0;

  /// Feriados
  ///
  /// In en, this message translates to:
  /// **'Holidays'**
  String get presentation_screens_tela_configuracoes_1;

  /// Informações Dekatrian
  ///
  /// In en, this message translates to:
  /// **'Dekatrian Info'**
  String get presentation_screens_tela_dekatrian_0;

  /// Descrição do calendário Dekatrian
  ///
  /// In en, this message translates to:
  /// **'Dekatrian is a calendar devised by a member of the Scicast podcast team:\n\n Roberto Spinelli.'**
  String get presentation_screens_tela_dekatrian_1;

  /// Descrição do grupo do facebook Dekatrian
  ///
  /// In en, this message translates to:
  /// **'Visit the Deviante page or the Dekatrian Facebook group to learn more.'**
  String get presentation_screens_tela_dekatrian_2;

  /// Link Deviante podcast
  ///
  /// In en, this message translates to:
  /// **'http://www.deviante.com.br/podcasts/scicast/'**
  String get presentation_screens_tela_dekatrian_3;

  /// Link site Deviante podcast
  ///
  /// In en, this message translates to:
  /// **'www.deviante.com.br/podcasts/scicast/'**
  String get presentation_screens_tela_dekatrian_4;

  /// Sobre o calendario de 13 meses e suas tentativas
  ///
  /// In en, this message translates to:
  /// **'Dekatrian isn’t a new idea; this form of calendar was used in ancient times, such as in Egypt and Greece. The lunar calendar measures time based on the moon’s phases and is used by many cultures around the world. A more recent attempt to create a lunar calendar was made by Moses Bruines Cotsworth, who created the 13-month Yearal, each month having 28 days.'**
  String get presentation_screens_tela_dekatrian_5;

  /// Por que adotar o Dekatrian?
  ///
  /// In en, this message translates to:
  /// **'Why adopt Dekatrian?'**
  String get presentation_screens_tela_dekatrian_6;

  /// Resposta do porque adotar o Dekatrian?
  ///
  /// In en, this message translates to:
  /// **'The Gregorian calendar we use today has several problems: months vary in length (28, 30 or 31 days), dates shift weekdays each year, and leap-year corrections are complex. Its structure was shaped by historical political decisions rather than logical or natural patterns. Dekatrian fixes these distortions by offering equal-length months, easier planning, and better alignment with natural cycles.'**
  String get presentation_screens_tela_dekatrian_7;

  /// Informações Desenvolvimento
  ///
  /// In en, this message translates to:
  /// **'Development Info'**
  String get presentation_screens_tela_desenvolvimento_0;

  /// Este programa está sendo desenvolvido por
  ///
  /// In en, this message translates to:
  /// **'This app is being developed by '**
  String get presentation_screens_tela_desenvolvimento_1;

  /// Este aplicativo está sendo mantido e distribuído pela empresa
  ///
  /// In en, this message translates to:
  /// **'. This application is maintained and distributed by the company '**
  String get presentation_screens_tela_desenvolvimento_1_1;

  /// . Para críticas, sugestões e contatos envie um email para
  ///
  /// In en, this message translates to:
  /// **'. For feedback or contact, email '**
  String get presentation_screens_tela_desenvolvimento_2;

  /// . Para críticas, sugestões e contatos envie um email para
  ///
  /// In en, this message translates to:
  /// **'This app was inspired by the Python Dekatrian app by Lario Diniz—an excellent, well-written application.'**
  String get presentation_screens_tela_desenvolvimento_3;

  /// Repositório:
  ///
  /// In en, this message translates to:
  /// **'Repository: '**
  String get presentation_screens_tela_desenvolvimento_4;

  /// O que me motivou a criar o app Dekatrian
  ///
  /// In en, this message translates to:
  /// **'One day I switched phones and the app was no longer available in the Play Store, so I decided to build a Flutter version.\n\nThanks to Lario Diniz for the inspiration and source code that helped me understand how Dekatrian works.\n\nI’ll do as Lario did and license this project under MIT so anyone can use Dekatrian’s source code to study or build their own version.\n\n'**
  String get presentation_screens_tela_desenvolvimento_5;

  /// Versão da Aplicação
  ///
  /// In en, this message translates to:
  /// **'App version: {version}'**
  String presentation_screens_tela_desenvolvimento_6(String version);

  /// Tecnologias utilizadas no desenvolvimento:
  ///
  /// In en, this message translates to:
  /// **'Technologies used in development:'**
  String get presentation_screens_tela_desenvolvimento_7;

  /// Erro ao carregar: {error}
  ///
  /// In en, this message translates to:
  /// **'Error loading: {error}'**
  String presentation_screens_tela_feriados_0(String error);

  /// Feriados
  ///
  /// In en, this message translates to:
  /// **'Holidays'**
  String get presentation_screens_tela_feriados_1;

  /// Search tasks...
  ///
  /// In en, this message translates to:
  /// **'Search tasks...'**
  String get presentation_screens_tela_feriados_2;

  /// Nenhuma preferência salva
  ///
  /// In en, this message translates to:
  /// **'No saved preference'**
  String get presentation_screens_tela_feriados_3;

  /// Novo
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get presentation_screens_tela_feriados_4;

  /// Dia
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get presentation_screens_tela_inicial_0;

  /// Mês
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get presentation_screens_tela_inicial_1;

  /// Ano
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get presentation_screens_tela_inicial_2;

  /// Novo Feriado
  ///
  /// In en, this message translates to:
  /// **'New Holiday'**
  String get presentation_screens_tela_novo_feriado_0;

  /// Search
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get presentation_screens_tela_novo_feriado_1;

  /// País
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get presentation_screens_tela_novo_feriado_2;

  /// Região
  ///
  /// In en, this message translates to:
  /// **'Region'**
  String get presentation_screens_tela_novo_feriado_3;

  /// Religião
  ///
  /// In en, this message translates to:
  /// **'Religion'**
  String get presentation_screens_tela_novo_feriado_4;

  /// 'Preferências salvas com sucesso!
  ///
  /// In en, this message translates to:
  /// **'Preferences saved successfully!'**
  String get presentation_screens_tela_novo_feriado_5;

  /// Salvar
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get presentation_screens_tela_novo_feriado_6;

  /// Nenhuma
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get presentation_screens_tela_novo_feriado_7;

  /// Sábado  - (F)inal de (S)emana
  ///
  /// In en, this message translates to:
  /// **'Saturday – weekend'**
  String get presentation_widgets_dia_calendario_0;

  /// Domingo - (F)inal de (S)emana
  ///
  /// In en, this message translates to:
  /// **'Sunday – weekend'**
  String get presentation_widgets_dia_calendario_1;

  /// (FE)riado:  descrição do feriado
  ///
  /// In en, this message translates to:
  /// **'(HD)oliday: {n}'**
  String presentation_widgets_dia_calendario_2(String n);

  /// Abreviação de (F)inal de (S)emana
  ///
  /// In en, this message translates to:
  /// **'WE'**
  String get presentation_widgets_dia_calendario_3;

  /// Abreviação de (FE)riado
  ///
  /// In en, this message translates to:
  /// **'HD'**
  String get presentation_widgets_dia_calendario_4;

  /// Confraternização Universal
  ///
  /// In en, this message translates to:
  /// **'New Year’s Day'**
  String get providers_country_brazil_holiday_providers_0;

  /// Dia de Tiradentes, Tirandentes é nome proprio
  ///
  /// In en, this message translates to:
  /// **'Tiradentes Day'**
  String get providers_country_brazil_holiday_providers_1;

  /// Dia do Trabalhador
  ///
  /// In en, this message translates to:
  /// **'Labor Day'**
  String get providers_country_brazil_holiday_providers_2;

  /// Revolução Constitucionalista de 1932
  ///
  /// In en, this message translates to:
  /// **'Constitutionalist Revolution of 1932'**
  String get providers_country_brazil_holiday_providers_3;

  /// Dia da Independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_brazil_holiday_providers_4;

  /// Proclamação da República
  ///
  /// In en, this message translates to:
  /// **'Republic Proclamation Day'**
  String get providers_country_brazil_holiday_providers_5;

  /// Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival'**
  String get providers_country_brazil_holiday_providers_6;

  /// Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival'**
  String get providers_country_brazil_holiday_providers_7;

  /// Aniversário do Espírito Santo, Espírito Santo é nome proprio
  ///
  /// In en, this message translates to:
  /// **'Espírito Santo State Anniversary'**
  String get providers_country_brazil_holiday_providers_8;

  /// Dia da Consciência Negra
  ///
  /// In en, this message translates to:
  /// **'Black Consciousness Day'**
  String get providers_country_brazil_holiday_providers_9;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_argentina_holiday_providers_0;

  /// Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival'**
  String get providers_country_argentina_holiday_providers_1;

  /// Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival'**
  String get providers_country_argentina_holiday_providers_2;

  /// Dia da memória pela verdade e justiça
  ///
  /// In en, this message translates to:
  /// **'Day of Remembrance for Truth and Justice'**
  String get providers_country_argentina_holiday_providers_3;

  /// Dia dos veteranos e mortos na Guerra das Malvinas
  ///
  /// In en, this message translates to:
  /// **'Day of the Veterans and Fallen of the Malvinas War'**
  String get providers_country_argentina_holiday_providers_4;

  /// Dia do trabalho
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_argentina_holiday_providers_5;

  /// Revolução de Maio
  ///
  /// In en, this message translates to:
  /// **'May Revolution'**
  String get providers_country_argentina_holiday_providers_6;

  /// Aniversário do falecimento do General Martín Miguel de Güemes
  ///
  /// In en, this message translates to:
  /// **'Anniversary of the Passing of General Martín Miguel de Güemes'**
  String get providers_country_argentina_holiday_providers_7;

  /// Dia em memória do General Manuel Belgrano
  ///
  /// In en, this message translates to:
  /// **'General Manuel Belgrano Memorial Day'**
  String get providers_country_argentina_holiday_providers_8;

  /// Dia da independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_argentina_holiday_providers_9;

  /// Dia em memória do General José de San Martín
  ///
  /// In en, this message translates to:
  /// **'General José de San Martín Memorial Day'**
  String get providers_country_argentina_holiday_providers_10;

  /// Dia do respeito à diversidade cultural
  ///
  /// In en, this message translates to:
  /// **'Day of Respect for Cultural Diversity'**
  String get providers_country_argentina_holiday_providers_11;

  /// Dia da soberania nacional
  ///
  /// In en, this message translates to:
  /// **'National Sovereignty Day'**
  String get providers_country_argentina_holiday_providers_12;

  /// Dia da Imaculada Conceição
  ///
  /// In en, this message translates to:
  /// **'Immaculate Conception Day'**
  String get providers_country_argentina_holiday_providers_13;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_argentina_holiday_providers_14;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_bolivia_holiday_providers_0;

  /// Fundação do Estado Plurinacional
  ///
  /// In en, this message translates to:
  /// **'Plurinational State Foundation Day'**
  String get providers_country_bolivia_holiday_providers_1;

  /// Segunda-feira de Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival Monday'**
  String get providers_country_bolivia_holiday_providers_2;

  /// Terça-feira de Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival Tuesday'**
  String get providers_country_bolivia_holiday_providers_3;

  /// Dia do trabalho
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_bolivia_holiday_providers_4;

  /// Ano Novo Aymara
  ///
  /// In en, this message translates to:
  /// **'Aymara New Year'**
  String get providers_country_bolivia_holiday_providers_5;

  /// Dia da independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_bolivia_holiday_providers_6;

  /// Dia de Finados
  ///
  /// In en, this message translates to:
  /// **'All Souls\' Day'**
  String get providers_country_bolivia_holiday_providers_7;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_bolivia_holiday_providers_8;

  /// Ano novo chinês
  ///
  /// In en, this message translates to:
  /// **'Chinese New Year'**
  String get providers_country_china_holiday_providers_0;

  /// Festival Qingming (Dia de Varrição de Túmulos)
  ///
  /// In en, this message translates to:
  /// **'Qingming Festival (Tomb-Sweeping Day)'**
  String get providers_country_china_holiday_providers_1;

  /// Dia Internacional do Trabalhador
  ///
  /// In en, this message translates to:
  /// **'International Workers\' Day'**
  String get providers_country_china_holiday_providers_2;

  /// Festival do Barco-Dragão
  ///
  /// In en, this message translates to:
  /// **'Dragon Boat Festival'**
  String get providers_country_china_holiday_providers_3;

  /// Festival do Meio Outono
  ///
  /// In en, this message translates to:
  /// **'Mid-Autumn Festival'**
  String get providers_country_china_holiday_providers_4;

  /// Dia Nacional
  ///
  /// In en, this message translates to:
  /// **'National Day'**
  String get providers_country_china_holiday_providers_5;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_colombia_holiday_providers_0;

  /// Dia de Reis
  ///
  /// In en, this message translates to:
  /// **'Epiphany'**
  String get providers_country_colombia_holiday_providers_1;

  /// Dia de São José
  ///
  /// In en, this message translates to:
  /// **'Saint Joseph\'s Day'**
  String get providers_country_colombia_holiday_providers_2;

  /// Quinta-feira Santa
  ///
  /// In en, this message translates to:
  /// **'Maundy Thursday'**
  String get providers_country_colombia_holiday_providers_3;

  /// Sexta-feira Santa
  ///
  /// In en, this message translates to:
  /// **'Good Friday'**
  String get providers_country_colombia_holiday_providers_4;

  /// Dia do Trabalho
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_colombia_holiday_providers_5;

  /// Ascensão de Jesus Cristo
  ///
  /// In en, this message translates to:
  /// **'Ascension of Jesus Christ'**
  String get providers_country_colombia_holiday_providers_6;

  /// Corpus Christi
  ///
  /// In en, this message translates to:
  /// **'Corpus Christi'**
  String get providers_country_colombia_holiday_providers_7;

  /// Sagrado Coração de Jesus
  ///
  /// In en, this message translates to:
  /// **'Sacred Heart'**
  String get providers_country_colombia_holiday_providers_8;

  /// Dia da Independência da Colômbia
  ///
  /// In en, this message translates to:
  /// **'Independence of Colombia'**
  String get providers_country_colombia_holiday_providers_9;

  /// Dia da Batalha de Boyacá
  ///
  /// In en, this message translates to:
  /// **'Battle of Boyacá'**
  String get providers_country_colombia_holiday_providers_10;

  /// Assunção de Maria
  ///
  /// In en, this message translates to:
  /// **'Assumption of Mary'**
  String get providers_country_colombia_holiday_providers_11;

  /// Dia de Colombo
  ///
  /// In en, this message translates to:
  /// **'Columbus Day'**
  String get providers_country_colombia_holiday_providers_12;

  /// Dia de Todos os Santos
  ///
  /// In en, this message translates to:
  /// **'All Saints\' Day'**
  String get providers_country_colombia_holiday_providers_13;

  /// Dia da Imaculada Conceição
  ///
  /// In en, this message translates to:
  /// **'Immaculate Conception Day'**
  String get providers_country_colombia_holiday_providers_14;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_colombia_holiday_providers_15;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_french_guiana_holiday_providers_0;

  /// Dia do trabalhador
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_french_guiana_holiday_providers_1;

  /// Dia da Vitória na Europa
  ///
  /// In en, this message translates to:
  /// **'Victory in Europe Day'**
  String get providers_country_french_guiana_holiday_providers_2;

  /// Dia da Ascensão
  ///
  /// In en, this message translates to:
  /// **'Ascension Day'**
  String get providers_country_french_guiana_holiday_providers_3;

  /// Segunda-feira de Pentecostes
  ///
  /// In en, this message translates to:
  /// **'Whit Monday'**
  String get providers_country_french_guiana_holiday_providers_4;

  /// Dia da Bastilha
  ///
  /// In en, this message translates to:
  /// **'Bastille Day'**
  String get providers_country_french_guiana_holiday_providers_5;

  /// Assunção de Maria
  ///
  /// In en, this message translates to:
  /// **'Assumption of Mary'**
  String get providers_country_french_guiana_holiday_providers_6;

  /// Dia de Todos os Santos
  ///
  /// In en, this message translates to:
  /// **'All Saints\' Day'**
  String get providers_country_french_guiana_holiday_providers_7;

  /// Dia do Armistício
  ///
  /// In en, this message translates to:
  /// **'Armistice Day'**
  String get providers_country_french_guiana_holiday_providers_8;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_french_guiana_holiday_providers_9;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_guyana_holiday_providers_0;

  /// Dia da República
  ///
  /// In en, this message translates to:
  /// **'Republic Day'**
  String get providers_country_guyana_holiday_providers_1;

  /// Phagwah
  ///
  /// In en, this message translates to:
  /// **'Phagwah'**
  String get providers_country_guyana_holiday_providers_2;

  /// Sexta-feira Santa
  ///
  /// In en, this message translates to:
  /// **'Good Friday'**
  String get providers_country_guyana_holiday_providers_3;

  /// Segunda-feira de Páscoa
  ///
  /// In en, this message translates to:
  /// **'Easter Monday'**
  String get providers_country_guyana_holiday_providers_4;

  /// Dia do trabalhador
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_guyana_holiday_providers_5;

  /// Dia da chegada
  ///
  /// In en, this message translates to:
  /// **'Arrival Day'**
  String get providers_country_guyana_holiday_providers_6;

  /// Dia da independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_guyana_holiday_providers_7;

  /// Dia do CARICOM
  ///
  /// In en, this message translates to:
  /// **'CARICOM Day'**
  String get providers_country_guyana_holiday_providers_8;

  /// Dia da Emancipação
  ///
  /// In en, this message translates to:
  /// **'Emancipation Day'**
  String get providers_country_guyana_holiday_providers_9;

  /// Deepavali
  ///
  /// In en, this message translates to:
  /// **'Deepavali'**
  String get providers_country_guyana_holiday_providers_10;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_guyana_holiday_providers_11;

  /// Boxing Day
  ///
  /// In en, this message translates to:
  /// **'Boxing Day'**
  String get providers_country_guyana_holiday_providers_12;

  /// Youman-Nabi
  ///
  /// In en, this message translates to:
  /// **'Youman-Nabi'**
  String get providers_country_guyana_holiday_providers_13;

  /// Eid-ul-Adha
  ///
  /// In en, this message translates to:
  /// **'Eid-ul-Adha'**
  String get providers_country_guyana_holiday_providers_14;

  /// Dia da República
  ///
  /// In en, this message translates to:
  /// **'Republic Day'**
  String get providers_country_india_holiday_providers_0;

  /// Jayanti de Ambedkar
  ///
  /// In en, this message translates to:
  /// **'Ambedkar Jayanti'**
  String get providers_country_india_holiday_providers_1;

  /// Dia da Independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_india_holiday_providers_2;

  /// Jayanti de Gandhi
  ///
  /// In en, this message translates to:
  /// **'Gandhi Jayanti'**
  String get providers_country_india_holiday_providers_3;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_japan_holiday_providers_0;

  /// Dia da maioridade
  ///
  /// In en, this message translates to:
  /// **'Coming of Age Day'**
  String get providers_country_japan_holiday_providers_1;

  /// Dia da fundação
  ///
  /// In en, this message translates to:
  /// **'Foundation Day'**
  String get providers_country_japan_holiday_providers_2;

  /// Dia Shōwa
  ///
  /// In en, this message translates to:
  /// **'Shōwa Day'**
  String get providers_country_japan_holiday_providers_3;

  /// Dia da Constituição
  ///
  /// In en, this message translates to:
  /// **'Constitution Memorial Day'**
  String get providers_country_japan_holiday_providers_4;

  /// Dia da natureza
  ///
  /// In en, this message translates to:
  /// **'Greenery Day'**
  String get providers_country_japan_holiday_providers_5;

  /// Dia das crianças
  ///
  /// In en, this message translates to:
  /// **'Children\'s Day'**
  String get providers_country_japan_holiday_providers_6;

  /// Dia do mar
  ///
  /// In en, this message translates to:
  /// **'Marine Day'**
  String get providers_country_japan_holiday_providers_7;

  /// Dia da montanha
  ///
  /// In en, this message translates to:
  /// **'Mountain Day'**
  String get providers_country_japan_holiday_providers_8;

  /// Dia do respeito aos idosos
  ///
  /// In en, this message translates to:
  /// **'Respect for the Aged Day'**
  String get providers_country_japan_holiday_providers_9;

  /// Dia da cultura
  ///
  /// In en, this message translates to:
  /// **'Culture Day'**
  String get providers_country_japan_holiday_providers_10;

  /// Dia de ação de graças pelo trabalho
  ///
  /// In en, this message translates to:
  /// **'Labour Thanksgiving Day'**
  String get providers_country_japan_holiday_providers_11;

  /// Aniversário do imperador
  ///
  /// In en, this message translates to:
  /// **'The Emperor\'s Birthday Tenchobushi'**
  String get providers_country_japan_holiday_providers_12;

  /// Aniversário do imperador
  ///
  /// In en, this message translates to:
  /// **'The Emperor\'s Birthday'**
  String get providers_country_japan_holiday_providers_13;

  /// Dia da saúde e esportes
  ///
  /// In en, this message translates to:
  /// **'Health and Sports Day'**
  String get providers_country_japan_holiday_providers_14;

  /// Dia dos esportes
  ///
  /// In en, this message translates to:
  /// **'Sports Day'**
  String get providers_country_japan_holiday_providers_15;

  /// Dia do equinócio vernal
  ///
  /// In en, this message translates to:
  /// **'Vernal Equinox Day'**
  String get providers_country_japan_holiday_providers_16;

  /// Dia do equinócio outonal
  ///
  /// In en, this message translates to:
  /// **'Autumnal Equinox Day'**
  String get providers_country_japan_holiday_providers_17;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_paraguay_holiday_providers_0;

  /// Dia dos heróis
  ///
  /// In en, this message translates to:
  /// **'Heroes\' Day'**
  String get providers_country_paraguay_holiday_providers_1;

  /// Dia do trabalhador
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_paraguay_holiday_providers_2;

  /// Independência do Paraguai
  ///
  /// In en, this message translates to:
  /// **'Paraguayan Independence'**
  String get providers_country_paraguay_holiday_providers_3;

  /// Independência do Paraguai
  ///
  /// In en, this message translates to:
  /// **'Paraguayan Independence'**
  String get providers_country_paraguay_holiday_providers_4;

  /// Armistício do Chaco
  ///
  /// In en, this message translates to:
  /// **'Chaco Armistice'**
  String get providers_country_paraguay_holiday_providers_5;

  /// Fundação de Assunção
  ///
  /// In en, this message translates to:
  /// **'Founding of Asunción'**
  String get providers_country_paraguay_holiday_providers_6;

  /// Dia da vitória na Batalha de Boquerón
  ///
  /// In en, this message translates to:
  /// **'Boquerón Battle Victory Day'**
  String get providers_country_paraguay_holiday_providers_7;

  /// Dia de Nossa Senhora de Caacupé
  ///
  /// In en, this message translates to:
  /// **'Virgin of Caacupé'**
  String get providers_country_paraguay_holiday_providers_8;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_paraguay_holiday_providers_9;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_peru_holiday_providers_0;

  /// Quinta-feira Santa
  ///
  /// In en, this message translates to:
  /// **'Holy Thursday'**
  String get providers_country_peru_holiday_providers_1;

  /// Dia Internacional do Trabalhador
  ///
  /// In en, this message translates to:
  /// **'International Workers\' Day'**
  String get providers_country_peru_holiday_providers_2;

  /// Dia de São Pedro e São Paulo
  ///
  /// In en, this message translates to:
  /// **'St. Peter and St. Paul'**
  String get providers_country_peru_holiday_providers_3;

  /// Dia da Independência (1º dia)
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_peru_holiday_providers_4;

  /// Dia da Independência (2º dia)
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_peru_holiday_providers_5;

  /// Dia de Santa Rosa de Lima
  ///
  /// In en, this message translates to:
  /// **'Santa Rosa de Lima'**
  String get providers_country_peru_holiday_providers_6;

  /// Dia da Batalha de Angamos
  ///
  /// In en, this message translates to:
  /// **'Battle of Angamos'**
  String get providers_country_peru_holiday_providers_7;

  /// Dia de Todos os Santos
  ///
  /// In en, this message translates to:
  /// **'All Saints\' Day'**
  String get providers_country_peru_holiday_providers_8;

  /// Dia da Imaculada Conceição
  ///
  /// In en, this message translates to:
  /// **'Immaculate Conception'**
  String get providers_country_peru_holiday_providers_9;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_peru_holiday_providers_10;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_russia_holiday_providers_0;

  /// Feriado de Ano Novo
  ///
  /// In en, this message translates to:
  /// **'New Year holiday'**
  String get providers_country_russia_holiday_providers_1;

  /// Feriado de Ano Novo
  ///
  /// In en, this message translates to:
  /// **'New Year holiday'**
  String get providers_country_russia_holiday_providers_2;

  /// Feriado de Ano Novo
  ///
  /// In en, this message translates to:
  /// **'New Year holiday'**
  String get providers_country_russia_holiday_providers_3;

  /// Feriado de Ano Novo
  ///
  /// In en, this message translates to:
  /// **'New Year holiday'**
  String get providers_country_russia_holiday_providers_4;

  /// Feriado de Ano Novo
  ///
  /// In en, this message translates to:
  /// **'New Year holiday'**
  String get providers_country_russia_holiday_providers_5;

  /// Natal ortodoxo
  ///
  /// In en, this message translates to:
  /// **'Orthodox Christmas Day'**
  String get providers_country_russia_holiday_providers_6;

  /// Dia do Defensor da Pátria
  ///
  /// In en, this message translates to:
  /// **'Defender of the Fatherland Day'**
  String get providers_country_russia_holiday_providers_7;

  /// Dia Internacional da Mulher
  ///
  /// In en, this message translates to:
  /// **'International Women\'s Day'**
  String get providers_country_russia_holiday_providers_8;

  /// Dia do Trabalhador
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_russia_holiday_providers_9;

  /// Dia da Vitória
  ///
  /// In en, this message translates to:
  /// **'Victory Day'**
  String get providers_country_russia_holiday_providers_10;

  /// Dia da Rússia
  ///
  /// In en, this message translates to:
  /// **'Russia Day'**
  String get providers_country_russia_holiday_providers_11;

  /// Dia da Unidade
  ///
  /// In en, this message translates to:
  /// **'Unity Day'**
  String get providers_country_russia_holiday_providers_12;

  /// Dia de Reis
  ///
  /// In en, this message translates to:
  /// **'Epiphany'**
  String get providers_country_spain_holiday_providers_0;

  /// Dia do Trabalhador
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_spain_holiday_providers_1;

  /// Dia Nacional da Espanha
  ///
  /// In en, this message translates to:
  /// **'National Day'**
  String get providers_country_spain_holiday_providers_2;

  /// Dia de Todos os Santos
  ///
  /// In en, this message translates to:
  /// **'All Saints Day'**
  String get providers_country_spain_holiday_providers_3;

  /// Dia da Constituição
  ///
  /// In en, this message translates to:
  /// **'Constitution Day'**
  String get providers_country_spain_holiday_providers_4;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_suriname_holiday_providers_0;

  /// Ano novo chinês
  ///
  /// In en, this message translates to:
  /// **'Chinese New Year'**
  String get providers_country_suriname_holiday_providers_1;

  /// Phagwah (Holi Phagwa)
  ///
  /// In en, this message translates to:
  /// **'Phagwah (Holi Phagwa)'**
  String get providers_country_suriname_holiday_providers_2;

  /// Eid al-Fitr
  ///
  /// In en, this message translates to:
  /// **'Eid al-Fitr'**
  String get providers_country_suriname_holiday_providers_3;

  /// Dia do Trabalhador
  ///
  /// In en, this message translates to:
  /// **'Labour Day'**
  String get providers_country_suriname_holiday_providers_4;

  /// Eid al-Adha
  ///
  /// In en, this message translates to:
  /// **'Eid al-Adha'**
  String get providers_country_suriname_holiday_providers_5;

  /// Dia da Emancipação (Ketikoti)
  ///
  /// In en, this message translates to:
  /// **'Emancipation Day (Ketikoti)'**
  String get providers_country_suriname_holiday_providers_6;

  /// Dia dos Povos Indígenas
  ///
  /// In en, this message translates to:
  /// **'Indigenous People\'s Day'**
  String get providers_country_suriname_holiday_providers_7;

  /// Dia dos Maroons
  ///
  /// In en, this message translates to:
  /// **'Day of the Maroons'**
  String get providers_country_suriname_holiday_providers_8;

  /// Diwali
  ///
  /// In en, this message translates to:
  /// **'Diwali'**
  String get providers_country_suriname_holiday_providers_9;

  /// Dia da Independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_suriname_holiday_providers_10;

  /// Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_suriname_holiday_providers_11;

  /// Boxing Day
  ///
  /// In en, this message translates to:
  /// **'Boxing Day'**
  String get providers_country_suriname_holiday_providers_12;

  /// Ano novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_uruguay_holiday_providers_0;

  /// Dia das crianças
  ///
  /// In en, this message translates to:
  /// **'Children\'s Day'**
  String get providers_country_uruguay_holiday_providers_1;

  /// Dia do desembarque dos 33 patriotas
  ///
  /// In en, this message translates to:
  /// **'Landing of the 33 Patriots Day'**
  String get providers_country_uruguay_holiday_providers_2;

  /// Dia Internacional do Trabalhador
  ///
  /// In en, this message translates to:
  /// **'International Workers\' Day'**
  String get providers_country_uruguay_holiday_providers_3;

  /// Batalha de Las Piedras
  ///
  /// In en, this message translates to:
  /// **'Battle of Las Piedras'**
  String get providers_country_uruguay_holiday_providers_4;

  /// Aniversário de José Gervasio Artigas e Dia do Nunca Mais
  ///
  /// In en, this message translates to:
  /// **'Birthday of José Gervasio Artigas and Never Again Day'**
  String get providers_country_uruguay_holiday_providers_5;

  /// Dia da Constituição
  ///
  /// In en, this message translates to:
  /// **'Constitution Day'**
  String get providers_country_uruguay_holiday_providers_6;

  /// Dia da Independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_uruguay_holiday_providers_7;

  /// Dia da Raça
  ///
  /// In en, this message translates to:
  /// **'Day of the Race'**
  String get providers_country_uruguay_holiday_providers_8;

  /// Dia dos mortos
  ///
  /// In en, this message translates to:
  /// **'Deceased Ones Day'**
  String get providers_country_uruguay_holiday_providers_9;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_uruguay_holiday_providers_10;

  /// Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival'**
  String get providers_country_uruguay_holiday_providers_11;

  /// Carnaval
  ///
  /// In en, this message translates to:
  /// **'Carnival'**
  String get providers_country_uruguay_holiday_providers_12;

  /// Dia de Ano Novo
  ///
  /// In en, this message translates to:
  /// **'New Year\'s Day'**
  String get providers_country_united_states_holiday_providers_0;

  /// Dia de Martin Luther King Jr.
  ///
  /// In en, this message translates to:
  /// **'Martin Luther King, Jr. Day'**
  String get providers_country_united_states_holiday_providers_1;

  /// Dia dos Presidentes
  ///
  /// In en, this message translates to:
  /// **'Presidents\' Day'**
  String get providers_country_united_states_holiday_providers_2;

  /// Dia da Memória
  ///
  /// In en, this message translates to:
  /// **'Memorial Day'**
  String get providers_country_united_states_holiday_providers_3;

  /// Dia da Independência Nacional de Juneteenth
  ///
  /// In en, this message translates to:
  /// **'Juneteenth National Independence Day'**
  String get providers_country_united_states_holiday_providers_4;

  /// Dia da Independência
  ///
  /// In en, this message translates to:
  /// **'Independence Day'**
  String get providers_country_united_states_holiday_providers_5;

  /// Dia do Trabalho
  ///
  /// In en, this message translates to:
  /// **'Labor Day'**
  String get providers_country_united_states_holiday_providers_6;

  /// Dia de Colombo
  ///
  /// In en, this message translates to:
  /// **'Columbus Day'**
  String get providers_country_united_states_holiday_providers_7;

  /// Dia dos Veteranos
  ///
  /// In en, this message translates to:
  /// **'Veterans Day'**
  String get providers_country_united_states_holiday_providers_8;

  /// Dia de Ação de Graças
  ///
  /// In en, this message translates to:
  /// **'Thanksgiving Day'**
  String get providers_country_united_states_holiday_providers_9;

  /// Dia de Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_country_united_states_holiday_providers_10;

  /// Dia de Truman
  ///
  /// In en, this message translates to:
  /// **'Truman Day'**
  String get providers_country_united_states_holiday_providers_11;

  /// Dia dos Povos Indígenas
  ///
  /// In en, this message translates to:
  /// **'Indigenous Peoples Day'**
  String get providers_country_united_states_holiday_providers_12;

  /// Aniversário de Lincoln
  ///
  /// In en, this message translates to:
  /// **'Lincoln\'s Birthday'**
  String get providers_country_united_states_holiday_providers_13;

  /// Dia de Todos os Santos
  ///
  /// In en, this message translates to:
  /// **'All Saints\' Day'**
  String get providers_religion_catholic_providers_0;

  /// Dia de Finados
  ///
  /// In en, this message translates to:
  /// **'All Souls\' Day'**
  String get providers_religion_catholic_providers_1;

  /// Ascensão
  ///
  /// In en, this message translates to:
  /// **'Ascension Day'**
  String get providers_religion_catholic_providers_2;

  /// Assunção de Maria
  ///
  /// In en, this message translates to:
  /// **'Assumption Day'**
  String get providers_religion_catholic_providers_3;

  /// Natal
  ///
  /// In en, this message translates to:
  /// **'Christmas Day'**
  String get providers_religion_catholic_providers_4;

  /// Corpus Christi
  ///
  /// In en, this message translates to:
  /// **'Corpus Christi'**
  String get providers_religion_catholic_providers_5;

  /// Segunda-feira de Páscoa
  ///
  /// In en, this message translates to:
  /// **'Easter Monday'**
  String get providers_religion_catholic_providers_6;

  /// Domingo de Páscoa
  ///
  /// In en, this message translates to:
  /// **'Easter Sunday'**
  String get providers_religion_catholic_providers_7;

  /// Dia de Reis
  ///
  /// In en, this message translates to:
  /// **'Epiphany'**
  String get providers_religion_catholic_providers_8;

  /// Sexta-feira Santa
  ///
  /// In en, this message translates to:
  /// **'Good Friday'**
  String get providers_religion_catholic_providers_9;

  /// Imaculada Conceição
  ///
  /// In en, this message translates to:
  /// **'Immaculate Conception Day'**
  String get providers_religion_catholic_providers_10;

  /// Quinta-feira Santa
  ///
  /// In en, this message translates to:
  /// **'Maundy Thursday'**
  String get providers_religion_catholic_providers_11;

  /// Nossa Senhora Aparecida
  ///
  /// In en, this message translates to:
  /// **'Our Lady of Aparecida'**
  String get providers_religion_catholic_providers_12;

  /// Nossa Senhora da Vitória
  ///
  /// In en, this message translates to:
  /// **'Our Lady of Vitoria'**
  String get providers_religion_catholic_providers_13;

  /// Pentecostes
  ///
  /// In en, this message translates to:
  /// **'Pentecost'**
  String get providers_religion_catholic_providers_14;

  /// Sagrado Coração
  ///
  /// In en, this message translates to:
  /// **'Sacred Heart'**
  String get providers_religion_catholic_providers_15;

  /// São José
  ///
  /// In en, this message translates to:
  /// **'Saint Joseph\'s Day'**
  String get providers_religion_catholic_providers_16;

  /// São Pedro e São Paulo
  ///
  /// In en, this message translates to:
  /// **'Saint Peter and Saint Paul'**
  String get providers_religion_catholic_providers_17;

  /// Santa Rosa de Lima
  ///
  /// In en, this message translates to:
  /// **'Santa Rosa de Lima'**
  String get providers_religion_catholic_providers_18;

  /// Virgem de Caacupé
  ///
  /// In en, this message translates to:
  /// **'Virgin of Caacupé'**
  String get providers_religion_catholic_providers_19;

  /// Brasil
  ///
  /// In en, this message translates to:
  /// **'Brazil'**
  String get providers_holiday_providers_0;

  /// Argentina
  ///
  /// In en, this message translates to:
  /// **'Argentina'**
  String get providers_holiday_providers_1;

  /// Bolívia
  ///
  /// In en, this message translates to:
  /// **'Bolivia'**
  String get providers_holiday_providers_2;

  /// Peru
  ///
  /// In en, this message translates to:
  /// **'Peru'**
  String get providers_holiday_providers_3;

  /// Paraguai
  ///
  /// In en, this message translates to:
  /// **'Paraguay'**
  String get providers_holiday_providers_4;

  /// Colômbia
  ///
  /// In en, this message translates to:
  /// **'Colombia'**
  String get providers_holiday_providers_5;

  /// Guiana Francesa
  ///
  /// In en, this message translates to:
  /// **'French Guiana'**
  String get providers_holiday_providers_6;

  /// Suriname
  ///
  /// In en, this message translates to:
  /// **'Suriname'**
  String get providers_holiday_providers_7;

  /// Guiana
  ///
  /// In en, this message translates to:
  /// **'Guyana'**
  String get providers_holiday_providers_8;

  /// Espanha
  ///
  /// In en, this message translates to:
  /// **'Spain'**
  String get providers_holiday_providers_10;

  /// Rússia
  ///
  /// In en, this message translates to:
  /// **'Russia'**
  String get providers_holiday_providers_11;

  /// Japão
  ///
  /// In en, this message translates to:
  /// **'Japan'**
  String get providers_holiday_providers_12;

  /// China
  ///
  /// In en, this message translates to:
  /// **'China'**
  String get providers_holiday_providers_13;

  /// Índia
  ///
  /// In en, this message translates to:
  /// **'India'**
  String get providers_holiday_providers_14;

  /// Uruguai
  ///
  /// In en, this message translates to:
  /// **'Uruguay'**
  String get providers_holiday_providers_15;

  /// Católico
  ///
  /// In en, this message translates to:
  /// **'Catholic'**
  String get providers_holiday_providers_16;

  /// Estados Unidos da América
  ///
  /// In en, this message translates to:
  /// **'United States of America'**
  String get providers_holiday_providers_17;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'en',
    'es',
    'hi',
    'ja',
    'pt',
    'ru',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'hi':
      return AppLocalizationsHi();
    case 'ja':
      return AppLocalizationsJa();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
