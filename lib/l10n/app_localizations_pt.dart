// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get main_title => 'Calendário Dekatrian';

  @override
  String get main_0 => 'Inicial';

  @override
  String get main_1 => 'Dekatrian';

  @override
  String get main_2 => 'Dev';

  @override
  String get main_3 => 'Configurações';

  @override
  String get main_4 => 'Uma Breve História';

  @override
  String get main_5 => 'Calendário';

  @override
  String get main_6 => 'Desenvolvimento';

  @override
  String get main_7 => 'Calendário Dekatrian';

  @override
  String get domain_models_lunar_date_0 => 'Feriado';

  @override
  String get presentation_screens_tela_configuracoes_0 => 'Configurações';

  @override
  String get presentation_screens_tela_configuracoes_1 => 'Feriados';

  @override
  String get presentation_screens_tela_dekatrian_0 => 'Informações Dekatrian';

  @override
  String get presentation_screens_tela_dekatrian_1 =>
      'Dekatrian é um calendário idealizado pelo integrante da equipe do podcast Scicast:\n\n Roberto Spinelli.';

  @override
  String get presentation_screens_tela_dekatrian_2 =>
      'Visite a página da Deviante ou o grupo do Facebook do Calendário Dekatrian para saber mais.';

  @override
  String get presentation_screens_tela_dekatrian_3 =>
      'http://www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_4 =>
      'www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_5 =>
      'Dekatrian não é uma ideia nova, esta forma de calendário já foi utilizada nos tempos antigos, como no Egito e na Grécia. O calendário lunar é uma forma de medir o tempo que se baseia nas fases da lua, e é utilizado por muitas culturas ao redor do mundo. Uma outra tentativa mais recente de criar um calendário lunar foi feita por Moses Bruines Cotsworth, que criou o calendário de 13 meses, o Yearal, cada um com 28 dias.';

  @override
  String get presentation_screens_tela_dekatrian_6 =>
      'Por que adotar o Dekatrian?';

  @override
  String get presentation_screens_tela_dekatrian_7 =>
      'O calendário gregoriano, usado atualmente, apresenta vários problemas: os meses têm durações irregulares (28, 30 ou 31 dias), as datas mudam de dia da semana a cada ano, e as correções como os anos bissextos são complexas. Além disso, sua estrutura foi influenciada por decisões políticas históricas, não seguindo um padrão natural ou lógico. O calendário Dekatrian busca corrigir essas distorções, oferecendo meses iguais, facilidade no planejamento e maior harmonia com ciclos naturais.';

  @override
  String get presentation_screens_tela_desenvolvimento_0 =>
      'Informações Desenvolvimento';

  @override
  String get presentation_screens_tela_desenvolvimento_1 =>
      'Este programa está sendo desenvolvido por ';

  @override
  String get presentation_screens_tela_desenvolvimento_1_1 =>
      '. Este aplicativo está sendo mantido e distribuído pela empresa ';

  @override
  String get presentation_screens_tela_desenvolvimento_2 =>
      '. Para críticas, sugestões e contatos envie um email para ';

  @override
  String get presentation_screens_tela_desenvolvimento_3 =>
      'Este programa foi inspirado no app Dekatrian, desenvolvido em python por Lario Diniz,  excelente aplicação, muito bem escrita. ';

  @override
  String get presentation_screens_tela_desenvolvimento_4 => 'Repositório: ';

  @override
  String get presentation_screens_tela_desenvolvimento_5 =>
      'Um belo dia troquei de celular e o mesmo aplicativo não estava mais disponível na loja Playstore, então resolvi fazer uma versão em Flutter.\n\n Agradeço ao Lario Diniz pela inspiração e pelo código fonte do Dekatrian, que me ajudou a entender como funciona o calendário Dekatrian.\n\n  Farei o mesmo que Lario e deixarei o projeto na licença MIT, para quem quiser usar o código fonte do Dekatrian para estudar ou criar sua própria versão.\n\n';

  @override
  String presentation_screens_tela_desenvolvimento_6(String version) {
    return 'Versão da Aplicação: $version';
  }

  @override
  String get presentation_screens_tela_desenvolvimento_7 =>
      'Tecnologias utilizadas no desenvolvimento:';

  @override
  String presentation_screens_tela_feriados_0(String error) {
    return 'Erro ao carregar: $error';
  }

  @override
  String get presentation_screens_tela_feriados_1 => 'Feriados';

  @override
  String get presentation_screens_tela_feriados_2 => 'Search tasks...';

  @override
  String get presentation_screens_tela_feriados_3 =>
      'Nenhuma preferência salva';

  @override
  String get presentation_screens_tela_feriados_4 => 'Novo';

  @override
  String get presentation_screens_tela_inicial_0 => 'Dia';

  @override
  String get presentation_screens_tela_inicial_1 => 'Mês';

  @override
  String get presentation_screens_tela_inicial_2 => 'Ano';

  @override
  String get presentation_screens_tela_novo_feriado_0 => 'Novo Feriado';

  @override
  String get presentation_screens_tela_novo_feriado_1 => 'Search';

  @override
  String get presentation_screens_tela_novo_feriado_2 => 'País';

  @override
  String get presentation_screens_tela_novo_feriado_3 => 'Região';

  @override
  String get presentation_screens_tela_novo_feriado_4 => 'Religião';

  @override
  String get presentation_screens_tela_novo_feriado_5 =>
      'Preferências salvas com sucesso!';

  @override
  String get presentation_screens_tela_novo_feriado_6 => 'Salvar';

  @override
  String get presentation_screens_tela_novo_feriado_7 => 'Nenhuma';

  @override
  String get presentation_widgets_dia_calendario_0 =>
      'Sábado  - (F)inal de (S)emana';

  @override
  String get presentation_widgets_dia_calendario_1 =>
      'Domingo - (F)inal de (S)emana';

  @override
  String presentation_widgets_dia_calendario_2(String n) {
    return '(FE)riado: $n';
  }

  @override
  String get presentation_widgets_dia_calendario_3 => 'FS';

  @override
  String get presentation_widgets_dia_calendario_4 => 'FE';

  @override
  String get providers_country_brazil_holiday_providers_0 =>
      'Confraternização Universal';

  @override
  String get providers_country_brazil_holiday_providers_1 =>
      'Dia de Tiradentes';

  @override
  String get providers_country_brazil_holiday_providers_2 =>
      'Dia do Trabalhador';

  @override
  String get providers_country_brazil_holiday_providers_3 =>
      'Revolução Constitucionalista de 1932';

  @override
  String get providers_country_brazil_holiday_providers_4 =>
      'Dia da Independência';

  @override
  String get providers_country_brazil_holiday_providers_5 =>
      'Proclamação da República';

  @override
  String get providers_country_brazil_holiday_providers_6 => 'Carnaval';

  @override
  String get providers_country_brazil_holiday_providers_7 => 'Carnaval';

  @override
  String get providers_country_brazil_holiday_providers_8 =>
      'Aniversário do Espírito Santo';

  @override
  String get providers_country_brazil_holiday_providers_9 =>
      'Dia da Consciência Negra';

  @override
  String get providers_country_argentina_holiday_providers_0 =>
      'Dia de Ano Novo';

  @override
  String get providers_country_argentina_holiday_providers_1 => 'Carnaval';

  @override
  String get providers_country_argentina_holiday_providers_2 => 'Carnaval';

  @override
  String get providers_country_argentina_holiday_providers_3 =>
      'Dia da Memória pela Verdade e Justiça';

  @override
  String get providers_country_argentina_holiday_providers_4 =>
      'Dia dos Veteranos e Mortos na Guerra das Malvinas';

  @override
  String get providers_country_argentina_holiday_providers_5 =>
      'Dia do Trabalho';

  @override
  String get providers_country_argentina_holiday_providers_6 =>
      'Revolução de Maio';

  @override
  String get providers_country_argentina_holiday_providers_7 =>
      'Aniversário do Falecimento do General Martín Miguel de Güemes';

  @override
  String get providers_country_argentina_holiday_providers_8 =>
      'Dia em Memória do General Manuel Belgrano';

  @override
  String get providers_country_argentina_holiday_providers_9 =>
      'Dia da Independência';

  @override
  String get providers_country_argentina_holiday_providers_10 =>
      'Dia em Memória do General José de San Martín';

  @override
  String get providers_country_argentina_holiday_providers_11 =>
      'Dia do Respeito à Diversidade Cultural';

  @override
  String get providers_country_argentina_holiday_providers_12 =>
      'Dia da Soberania Nacional';

  @override
  String get providers_country_argentina_holiday_providers_13 =>
      'Dia da Imaculada Conceição';

  @override
  String get providers_country_argentina_holiday_providers_14 => 'Dia de Natal';

  @override
  String get providers_country_bolivia_holiday_providers_0 => 'Dia de Ano Novo';

  @override
  String get providers_country_bolivia_holiday_providers_1 =>
      'Dia da Fundação do Estado Plurinacional';

  @override
  String get providers_country_bolivia_holiday_providers_2 =>
      'Segunda-feira de Carnaval';

  @override
  String get providers_country_bolivia_holiday_providers_3 =>
      'Terça-feira de Carnaval';

  @override
  String get providers_country_bolivia_holiday_providers_4 => 'Dia do Trabalho';

  @override
  String get providers_country_bolivia_holiday_providers_5 => 'Ano Novo Aymara';

  @override
  String get providers_country_bolivia_holiday_providers_6 =>
      'Dia da Independência';

  @override
  String get providers_country_bolivia_holiday_providers_7 => 'Dia de Finados';

  @override
  String get providers_country_bolivia_holiday_providers_8 => 'Dia de Natal';

  @override
  String get providers_country_china_holiday_providers_0 => 'Ano Novo Chinês';

  @override
  String get providers_country_china_holiday_providers_1 =>
      'Festival de Qingming (Dia de Varrição de Túmulos)';

  @override
  String get providers_country_china_holiday_providers_2 =>
      'Dia Internacional do Trabalhador';

  @override
  String get providers_country_china_holiday_providers_3 =>
      'Festival do Barco-Dragão';

  @override
  String get providers_country_china_holiday_providers_4 =>
      'Festival do Meio Outono';

  @override
  String get providers_country_china_holiday_providers_5 => 'Dia Nacional';

  @override
  String get providers_country_colombia_holiday_providers_0 =>
      'Dia de Ano Novo';

  @override
  String get providers_country_colombia_holiday_providers_1 => 'Dia de Reis';

  @override
  String get providers_country_colombia_holiday_providers_2 =>
      'Dia de São José';

  @override
  String get providers_country_colombia_holiday_providers_3 =>
      'Quinta-feira Santa';

  @override
  String get providers_country_colombia_holiday_providers_4 =>
      'Sexta-feira Santa';

  @override
  String get providers_country_colombia_holiday_providers_5 =>
      'Dia do Trabalho';

  @override
  String get providers_country_colombia_holiday_providers_6 =>
      'Ascensão de Jesus Cristo';

  @override
  String get providers_country_colombia_holiday_providers_7 => 'Corpus Christi';

  @override
  String get providers_country_colombia_holiday_providers_8 =>
      'Sagrado Coração de Jesus';

  @override
  String get providers_country_colombia_holiday_providers_9 =>
      'Dia da Independência da Colômbia';

  @override
  String get providers_country_colombia_holiday_providers_10 =>
      'Dia da Batalha de Boyacá';

  @override
  String get providers_country_colombia_holiday_providers_11 =>
      'Assunção de Maria';

  @override
  String get providers_country_colombia_holiday_providers_12 =>
      'Dia de Colombo';

  @override
  String get providers_country_colombia_holiday_providers_13 =>
      'Dia de Todos os Santos';

  @override
  String get providers_country_colombia_holiday_providers_14 =>
      'Dia da Imaculada Conceição';

  @override
  String get providers_country_colombia_holiday_providers_15 => 'Dia de Natal';

  @override
  String get providers_country_french_guiana_holiday_providers_0 =>
      'Dia de Ano Novo';

  @override
  String get providers_country_french_guiana_holiday_providers_1 =>
      'Dia do Trabalho';

  @override
  String get providers_country_french_guiana_holiday_providers_2 =>
      'Dia da Vitória na Europa';

  @override
  String get providers_country_french_guiana_holiday_providers_3 =>
      'Dia da Ascensão';

  @override
  String get providers_country_french_guiana_holiday_providers_4 =>
      'Segunda-feira de Pentecostes';

  @override
  String get providers_country_french_guiana_holiday_providers_5 =>
      'Dia da Bastilha';

  @override
  String get providers_country_french_guiana_holiday_providers_6 =>
      'Assunção de Maria';

  @override
  String get providers_country_french_guiana_holiday_providers_7 =>
      'Dia de Todos os Santos';

  @override
  String get providers_country_french_guiana_holiday_providers_8 =>
      'Dia do Armistício';

  @override
  String get providers_country_french_guiana_holiday_providers_9 =>
      'Dia de Natal';

  @override
  String get providers_country_guyana_holiday_providers_0 => 'Dia de Ano Novo';

  @override
  String get providers_country_guyana_holiday_providers_1 => 'Dia da República';

  @override
  String get providers_country_guyana_holiday_providers_2 => 'Phagwah';

  @override
  String get providers_country_guyana_holiday_providers_3 =>
      'Sexta-feira Santa';

  @override
  String get providers_country_guyana_holiday_providers_4 =>
      'Segunda-feira de Páscoa';

  @override
  String get providers_country_guyana_holiday_providers_5 =>
      'Dia do Trabalhador';

  @override
  String get providers_country_guyana_holiday_providers_6 => 'Dia da Chegada';

  @override
  String get providers_country_guyana_holiday_providers_7 =>
      'Dia da Independência';

  @override
  String get providers_country_guyana_holiday_providers_8 => 'Dia do CARICOM';

  @override
  String get providers_country_guyana_holiday_providers_9 =>
      'Dia da Emancipação';

  @override
  String get providers_country_guyana_holiday_providers_10 => 'Deepavali';

  @override
  String get providers_country_guyana_holiday_providers_11 => 'Dia de Natal';

  @override
  String get providers_country_guyana_holiday_providers_12 => 'Boxing Day';

  @override
  String get providers_country_guyana_holiday_providers_13 => 'Youman-Nabi';

  @override
  String get providers_country_guyana_holiday_providers_14 => 'Eid-ul-Adha';

  @override
  String get providers_country_india_holiday_providers_0 => 'Dia da República';

  @override
  String get providers_country_india_holiday_providers_1 =>
      'Jayanti de Ambedkar';

  @override
  String get providers_country_india_holiday_providers_2 =>
      'Dia da Independência';

  @override
  String get providers_country_india_holiday_providers_3 => 'Jayanti de Gandhi';

  @override
  String get providers_country_japan_holiday_providers_0 => 'Dia de Ano Novo';

  @override
  String get providers_country_japan_holiday_providers_1 => 'Dia da Maioridade';

  @override
  String get providers_country_japan_holiday_providers_2 => 'Dia da Fundação';

  @override
  String get providers_country_japan_holiday_providers_3 => 'Dia Shōwa';

  @override
  String get providers_country_japan_holiday_providers_4 =>
      'Dia da Constituição';

  @override
  String get providers_country_japan_holiday_providers_5 => 'Dia da Natureza';

  @override
  String get providers_country_japan_holiday_providers_6 => 'Dia das Crianças';

  @override
  String get providers_country_japan_holiday_providers_7 => 'Dia do Mar';

  @override
  String get providers_country_japan_holiday_providers_8 => 'Dia da Montanha';

  @override
  String get providers_country_japan_holiday_providers_9 =>
      'Dia do Respeito aos Idosos';

  @override
  String get providers_country_japan_holiday_providers_10 => 'Dia da Cultura';

  @override
  String get providers_country_japan_holiday_providers_11 =>
      'Dia de Ação de Graças pelo Trabalho';

  @override
  String get providers_country_japan_holiday_providers_12 =>
      'Aniversário do Imperador Tenchobushi';

  @override
  String get providers_country_japan_holiday_providers_13 =>
      'Aniversário do Imperador';

  @override
  String get providers_country_japan_holiday_providers_14 =>
      'Dia da Saúde e Esportes';

  @override
  String get providers_country_japan_holiday_providers_15 => 'Dia dos Esportes';

  @override
  String get providers_country_japan_holiday_providers_16 =>
      'Dia do Equinócio Vernal';

  @override
  String get providers_country_japan_holiday_providers_17 =>
      'Dia do Equinócio Outonal';

  @override
  String get providers_country_paraguay_holiday_providers_0 =>
      'Dia de Ano Novo';

  @override
  String get providers_country_paraguay_holiday_providers_1 => 'Dia dos Heróis';

  @override
  String get providers_country_paraguay_holiday_providers_2 =>
      'Dia do Trabalhador';

  @override
  String get providers_country_paraguay_holiday_providers_3 =>
      'Independência do Paraguai';

  @override
  String get providers_country_paraguay_holiday_providers_4 =>
      'Independência do Paraguai';

  @override
  String get providers_country_paraguay_holiday_providers_5 =>
      'Armistício do Chaco';

  @override
  String get providers_country_paraguay_holiday_providers_6 =>
      'Fundação de Assunção';

  @override
  String get providers_country_paraguay_holiday_providers_7 =>
      'Dia da Vitória na Batalha de Boquerón';

  @override
  String get providers_country_paraguay_holiday_providers_8 =>
      'Dia de Nossa Senhora de Caacupé';

  @override
  String get providers_country_paraguay_holiday_providers_9 => 'Dia de Natal';

  @override
  String get providers_country_peru_holiday_providers_0 => 'Dia de Ano Novo';

  @override
  String get providers_country_peru_holiday_providers_1 => 'Quinta-feira Santa';

  @override
  String get providers_country_peru_holiday_providers_2 =>
      'Dia Internacional do Trabalhador';

  @override
  String get providers_country_peru_holiday_providers_3 =>
      'Dia de São Pedro e São Paulo';

  @override
  String get providers_country_peru_holiday_providers_4 =>
      'Dia da Independência (1º dia)';

  @override
  String get providers_country_peru_holiday_providers_5 =>
      'Dia da Independência (2º dia)';

  @override
  String get providers_country_peru_holiday_providers_6 =>
      'Dia de Santa Rosa de Lima';

  @override
  String get providers_country_peru_holiday_providers_7 =>
      'Dia da Batalha de Angamos';

  @override
  String get providers_country_peru_holiday_providers_8 =>
      'Dia de Todos os Santos';

  @override
  String get providers_country_peru_holiday_providers_9 =>
      'Dia da Imaculada Conceição';

  @override
  String get providers_country_peru_holiday_providers_10 => 'Dia de Natal';

  @override
  String get providers_country_russia_holiday_providers_0 => 'Dia de Ano Novo';

  @override
  String get providers_country_russia_holiday_providers_1 =>
      'Feriado de Ano Novo';

  @override
  String get providers_country_russia_holiday_providers_2 =>
      'Feriado de Ano Novo';

  @override
  String get providers_country_russia_holiday_providers_3 =>
      'Feriado de Ano Novo';

  @override
  String get providers_country_russia_holiday_providers_4 =>
      'Feriado de Ano Novo';

  @override
  String get providers_country_russia_holiday_providers_5 =>
      'Feriado de Ano Novo';

  @override
  String get providers_country_russia_holiday_providers_6 => 'Natal Ortodoxo';

  @override
  String get providers_country_russia_holiday_providers_7 =>
      'Dia do Defensor da Pátria';

  @override
  String get providers_country_russia_holiday_providers_8 =>
      'Dia Internacional da Mulher';

  @override
  String get providers_country_russia_holiday_providers_9 =>
      'Dia do Trabalhador';

  @override
  String get providers_country_russia_holiday_providers_10 => 'Dia da Vitória';

  @override
  String get providers_country_russia_holiday_providers_11 => 'Dia da Rússia';

  @override
  String get providers_country_russia_holiday_providers_12 => 'Dia da Unidade';

  @override
  String get providers_country_spain_holiday_providers_0 => 'Dia de Reis';

  @override
  String get providers_country_spain_holiday_providers_1 =>
      'Dia do Trabalhador';

  @override
  String get providers_country_spain_holiday_providers_2 =>
      'Dia Nacional da Espanha';

  @override
  String get providers_country_spain_holiday_providers_3 =>
      'Dia de Todos os Santos';

  @override
  String get providers_country_spain_holiday_providers_4 =>
      'Dia da Constituição';

  @override
  String get providers_country_suriname_holiday_providers_0 =>
      'Dia de Ano Novo';

  @override
  String get providers_country_suriname_holiday_providers_1 =>
      'Dia do Ano Novo Chinês';

  @override
  String get providers_country_suriname_holiday_providers_2 =>
      'Phagwah (Holi Phagwa)';

  @override
  String get providers_country_suriname_holiday_providers_3 => 'Eid al-Fitr';

  @override
  String get providers_country_suriname_holiday_providers_4 =>
      'Dia do Trabalhador';

  @override
  String get providers_country_suriname_holiday_providers_5 => 'Eid al-Adha';

  @override
  String get providers_country_suriname_holiday_providers_6 =>
      'Dia da Emancipação (Ketikoti)';

  @override
  String get providers_country_suriname_holiday_providers_7 =>
      'Dia dos Povos Indígenas';

  @override
  String get providers_country_suriname_holiday_providers_8 =>
      'Dia dos Maroons';

  @override
  String get providers_country_suriname_holiday_providers_9 => 'Diwali';

  @override
  String get providers_country_suriname_holiday_providers_10 =>
      'Dia da Independência';

  @override
  String get providers_country_suriname_holiday_providers_11 => 'Dia de Natal';

  @override
  String get providers_country_suriname_holiday_providers_12 => 'Boxing Day';

  @override
  String get providers_country_uruguay_holiday_providers_0 => 'Dia de Ano Novo';

  @override
  String get providers_country_uruguay_holiday_providers_1 =>
      'Dia das Crianças';

  @override
  String get providers_country_uruguay_holiday_providers_2 =>
      'Dia do Desembarque dos 33 Patriotas';

  @override
  String get providers_country_uruguay_holiday_providers_3 =>
      'Dia Internacional do Trabalhador';

  @override
  String get providers_country_uruguay_holiday_providers_4 =>
      'Batalha de Las Piedras';

  @override
  String get providers_country_uruguay_holiday_providers_5 =>
      'Aniversário de José Gervasio Artigas e Dia do Nunca Mais';

  @override
  String get providers_country_uruguay_holiday_providers_6 =>
      'Dia da Constituição';

  @override
  String get providers_country_uruguay_holiday_providers_7 =>
      'Dia da Independência';

  @override
  String get providers_country_uruguay_holiday_providers_8 => 'Dia da Raça';

  @override
  String get providers_country_uruguay_holiday_providers_9 => 'Dia dos Mortos';

  @override
  String get providers_country_uruguay_holiday_providers_10 => 'Dia de Natal';

  @override
  String get providers_country_uruguay_holiday_providers_11 => 'Carnaval';

  @override
  String get providers_country_uruguay_holiday_providers_12 => 'Carnaval';

  @override
  String get providers_country_united_states_holiday_providers_0 =>
      'Dia de Ano Novo';

  @override
  String get providers_country_united_states_holiday_providers_1 =>
      'Dia de Martin Luther King Jr.';

  @override
  String get providers_country_united_states_holiday_providers_2 =>
      'Dia dos Presidentes';

  @override
  String get providers_country_united_states_holiday_providers_3 =>
      'Dia da Memória';

  @override
  String get providers_country_united_states_holiday_providers_4 =>
      'Dia da Independência Nacional de Juneteenth';

  @override
  String get providers_country_united_states_holiday_providers_5 =>
      'Dia da Independência';

  @override
  String get providers_country_united_states_holiday_providers_6 =>
      'Dia do Trabalho';

  @override
  String get providers_country_united_states_holiday_providers_7 =>
      'Dia de Colombo';

  @override
  String get providers_country_united_states_holiday_providers_8 =>
      'Dia dos Veteranos';

  @override
  String get providers_country_united_states_holiday_providers_9 =>
      'Dia de Ação de Graças';

  @override
  String get providers_country_united_states_holiday_providers_10 =>
      'Dia de Natal';

  @override
  String get providers_country_united_states_holiday_providers_11 =>
      'Dia de Truman';

  @override
  String get providers_country_united_states_holiday_providers_12 =>
      'Dia dos Povos Indígenas';

  @override
  String get providers_country_united_states_holiday_providers_13 =>
      'Aniversário de Lincoln';

  @override
  String get providers_religion_catholic_providers_0 =>
      'Dia de Todos os Santos';

  @override
  String get providers_religion_catholic_providers_1 => 'Dia de Finados';

  @override
  String get providers_religion_catholic_providers_2 => 'Ascensão';

  @override
  String get providers_religion_catholic_providers_3 => 'Assunção de Maria';

  @override
  String get providers_religion_catholic_providers_4 => 'Dia de Natal';

  @override
  String get providers_religion_catholic_providers_5 => 'Corpus Christi';

  @override
  String get providers_religion_catholic_providers_6 =>
      'Segunda-feira de Páscoa';

  @override
  String get providers_religion_catholic_providers_7 => 'Domingo de Páscoa';

  @override
  String get providers_religion_catholic_providers_8 => 'Dia de Reis';

  @override
  String get providers_religion_catholic_providers_9 => 'Sexta-feira Santa';

  @override
  String get providers_religion_catholic_providers_10 => 'Imaculada Conceição';

  @override
  String get providers_religion_catholic_providers_11 => 'Quinta-feira Santa';

  @override
  String get providers_religion_catholic_providers_12 =>
      'Nossa Senhora Aparecida';

  @override
  String get providers_religion_catholic_providers_13 =>
      'Nossa Senhora da Vitória';

  @override
  String get providers_religion_catholic_providers_14 => 'Pentecostes';

  @override
  String get providers_religion_catholic_providers_15 => 'Sagrado Coração';

  @override
  String get providers_religion_catholic_providers_16 => 'São José';

  @override
  String get providers_religion_catholic_providers_17 =>
      'São Pedro e São Paulo';

  @override
  String get providers_religion_catholic_providers_18 => 'Santa Rosa de Lima';

  @override
  String get providers_religion_catholic_providers_19 => 'Virgem de Caacupé';

  @override
  String get providers_holiday_providers_0 => 'Brasil';

  @override
  String get providers_holiday_providers_1 => 'Argentina';

  @override
  String get providers_holiday_providers_2 => 'Bolívia';

  @override
  String get providers_holiday_providers_3 => 'Peru';

  @override
  String get providers_holiday_providers_4 => 'Paraguai';

  @override
  String get providers_holiday_providers_5 => 'Colômbia';

  @override
  String get providers_holiday_providers_6 => 'Guiana Francesa';

  @override
  String get providers_holiday_providers_7 => 'Suriname';

  @override
  String get providers_holiday_providers_8 => 'Guiana';

  @override
  String get providers_holiday_providers_10 => 'Espanha';

  @override
  String get providers_holiday_providers_11 => 'Rússia';

  @override
  String get providers_holiday_providers_12 => 'Japão';

  @override
  String get providers_holiday_providers_13 => 'China';

  @override
  String get providers_holiday_providers_14 => 'Índia';

  @override
  String get providers_holiday_providers_15 => 'Uruguai';

  @override
  String get providers_holiday_providers_16 => 'Católico';

  @override
  String get providers_holiday_providers_17 => 'Estados Unidos da América';
}
