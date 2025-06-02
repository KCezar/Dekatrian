// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get main_title => 'Calendario Dekatrian';

  @override
  String get main_0 => 'Inicio';

  @override
  String get main_1 => 'Dekatrian';

  @override
  String get main_2 => 'Dev';

  @override
  String get main_3 => 'Configuración';

  @override
  String get main_4 => 'Una breve historia';

  @override
  String get main_5 => 'Calendario';

  @override
  String get main_6 => 'Desarrollo';

  @override
  String get main_7 => 'Calendario Dekatrian';

  @override
  String get domain_models_lunar_date_0 => 'Feriado';

  @override
  String get presentation_screens_tela_configuracoes_0 => 'Configuraciones';

  @override
  String get presentation_screens_tela_configuracoes_1 => 'Feriados';

  @override
  String get presentation_screens_tela_dekatrian_0 => 'Información Dekatrian';

  @override
  String get presentation_screens_tela_dekatrian_1 =>
      'Dekatrian es un calendario ideado por el integrante del equipo del podcast Scicast:\n\n Roberto Spinelli.';

  @override
  String get presentation_screens_tela_dekatrian_2 =>
      'Visite la página de Deviante o el grupo de Facebook del Calendario Dekatrian para saber más.';

  @override
  String get presentation_screens_tela_dekatrian_3 =>
      'http://www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_4 =>
      'www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_5 =>
      'Dekatrian no es una idea nueva; esta forma de calendario ya se utilizó en la antigüedad, como en Egipto y Grecia. El calendario lunar es una forma de medir el tiempo basada en las fases de la luna, y es utilizado por muchas culturas alrededor del mundo. Un intento más reciente de crear un calendario lunar fue realizado por Moses Bruines Cotsworth, quien creó el calendario de 13 meses, cada uno con 28 días.';

  @override
  String get presentation_screens_tela_dekatrian_6 =>
      '¿Por qué adoptar Dekatrian?';

  @override
  String get presentation_screens_tela_dekatrian_7 =>
      'El calendario gregoriano, usado actualmente, presenta varios problemas: los meses tienen duraciones irregulares (28, 30 o 31 días), las fechas cambian de día de la semana cada año, y las correcciones como los años bisiestos son complejas. Además, su estructura fue influenciada por decisiones políticas históricas, no siguiendo un patrón natural o lógico. El calendario Dekatrian busca corregir estas distorsiones, ofreciendo meses iguales, facilidad en la planificación y mayor armonía con ciclos naturales.';

  @override
  String get presentation_screens_tela_desenvolvimento_0 =>
      'Información de desarrollo';

  @override
  String get presentation_screens_tela_desenvolvimento_1 =>
      'Este programa está siendo desarrollado por ';

  @override
  String get presentation_screens_tela_desenvolvimento_1_1 =>
      '. Esta aplicación está siendo mantenida y distribuida por la empresa ';

  @override
  String get presentation_screens_tela_desenvolvimento_2 =>
      '. Para críticas, sugerencias y contactos envía un email a ';

  @override
  String get presentation_screens_tela_desenvolvimento_3 =>
      'Este programa se inspiró en la app Dekatrian, desarrollada en Python por Lario Diniz, excelente aplicación, muy bien escrita.';

  @override
  String get presentation_screens_tela_desenvolvimento_4 => 'Repositorio: ';

  @override
  String get presentation_screens_tela_desenvolvimento_5 =>
      'Un buen día cambié de celular y la misma aplicación ya no estaba disponible en la Play Store, así que decidí hacer una versión en Flutter.\n\nAgradezco a Lario Diniz por la inspiración y por el código fuente de Dekatrian, que me ayudó a entender cómo funciona el calendario Dekatrian.\n\nHaré lo mismo que Lario y dejaré el proyecto bajo licencia MIT, para quien quiera usar el código fuente de Dekatrian para estudiar o crear su propia versión.\n\n';

  @override
  String presentation_screens_tela_desenvolvimento_6(String version) {
    return 'Versión de la aplicación: $version';
  }

  @override
  String get presentation_screens_tela_desenvolvimento_7 =>
      'Tecnologías utilizadas en el desarrollo:';

  @override
  String presentation_screens_tela_feriados_0(String error) {
    return 'Error al cargar: $error';
  }

  @override
  String get presentation_screens_tela_feriados_1 => 'Feriados';

  @override
  String get presentation_screens_tela_feriados_2 => 'Buscar tareas...';

  @override
  String get presentation_screens_tela_feriados_3 =>
      'Ninguna preferencia guardada';

  @override
  String get presentation_screens_tela_feriados_4 => 'Nuevo';

  @override
  String get presentation_screens_tela_inicial_0 => 'Día';

  @override
  String get presentation_screens_tela_inicial_1 => 'Mes';

  @override
  String get presentation_screens_tela_inicial_2 => 'Año';

  @override
  String get presentation_screens_tela_novo_feriado_0 => 'Nuevo feriado';

  @override
  String get presentation_screens_tela_novo_feriado_1 => 'Buscar';

  @override
  String get presentation_screens_tela_novo_feriado_2 => 'País';

  @override
  String get presentation_screens_tela_novo_feriado_3 => 'Región';

  @override
  String get presentation_screens_tela_novo_feriado_4 => 'Religión';

  @override
  String get presentation_screens_tela_novo_feriado_5 =>
      '¡Preferencias guardadas con éxito!';

  @override
  String get presentation_screens_tela_novo_feriado_6 => 'Guardar';

  @override
  String get presentation_screens_tela_novo_feriado_7 => 'Ninguna';

  @override
  String get presentation_widgets_dia_calendario_0 =>
      'Sábado - (F)in de (S)emana';

  @override
  String get presentation_widgets_dia_calendario_1 =>
      'Domingo - (F)in de (S)emana';

  @override
  String presentation_widgets_dia_calendario_2(String n) {
    return '(FE)stivo: $n';
  }

  @override
  String get presentation_widgets_dia_calendario_3 => 'FS';

  @override
  String get presentation_widgets_dia_calendario_4 => 'FE';

  @override
  String get providers_country_brazil_holiday_providers_0 =>
      'Confraternización Universal';

  @override
  String get providers_country_brazil_holiday_providers_1 =>
      'Día de Tiradentes';

  @override
  String get providers_country_brazil_holiday_providers_2 =>
      'Día del Trabajador';

  @override
  String get providers_country_brazil_holiday_providers_3 =>
      'Revolución Constitucionalista de 1932';

  @override
  String get providers_country_brazil_holiday_providers_4 =>
      'Día de la Independencia';

  @override
  String get providers_country_brazil_holiday_providers_5 =>
      'Proclamación de la República';

  @override
  String get providers_country_brazil_holiday_providers_6 => 'Carnaval';

  @override
  String get providers_country_brazil_holiday_providers_7 => 'Carnaval';

  @override
  String get providers_country_brazil_holiday_providers_8 =>
      'Aniversario del Espíritu Santo';

  @override
  String get providers_country_brazil_holiday_providers_9 =>
      'Día de la Conciencia Negra';

  @override
  String get providers_country_argentina_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_argentina_holiday_providers_1 => 'Carnaval';

  @override
  String get providers_country_argentina_holiday_providers_2 => 'Carnaval';

  @override
  String get providers_country_argentina_holiday_providers_3 =>
      'Día de la Memoria por la Verdad y la Justicia';

  @override
  String get providers_country_argentina_holiday_providers_4 =>
      'Día de los Veteranos y Caídos de la Guerra de las Malvinas';

  @override
  String get providers_country_argentina_holiday_providers_5 =>
      'Día del Trabajo';

  @override
  String get providers_country_argentina_holiday_providers_6 =>
      'Revolución de Mayo';

  @override
  String get providers_country_argentina_holiday_providers_7 =>
      'Aniversario del Fallecimiento del General Martín Miguel de Güemes';

  @override
  String get providers_country_argentina_holiday_providers_8 =>
      'Día en Memoria del General Manuel Belgrano';

  @override
  String get providers_country_argentina_holiday_providers_9 =>
      'Día de la Independencia';

  @override
  String get providers_country_argentina_holiday_providers_10 =>
      'Día en Memoria del General José de San Martín';

  @override
  String get providers_country_argentina_holiday_providers_11 =>
      'Día del Respeto a la Diversidad Cultural';

  @override
  String get providers_country_argentina_holiday_providers_12 =>
      'Día de la Soberanía Nacional';

  @override
  String get providers_country_argentina_holiday_providers_13 =>
      'Día de la Inmaculada Concepción';

  @override
  String get providers_country_argentina_holiday_providers_14 => 'Navidad';

  @override
  String get providers_country_bolivia_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_bolivia_holiday_providers_1 =>
      'Día de la Fundación del Estado Plurinacional';

  @override
  String get providers_country_bolivia_holiday_providers_2 =>
      'Lunes de Carnaval';

  @override
  String get providers_country_bolivia_holiday_providers_3 =>
      'Martes de Carnaval';

  @override
  String get providers_country_bolivia_holiday_providers_4 =>
      'Día del Trabajador';

  @override
  String get providers_country_bolivia_holiday_providers_5 =>
      'Año Nuevo Aymara';

  @override
  String get providers_country_bolivia_holiday_providers_6 =>
      'Día de la Independencia';

  @override
  String get providers_country_bolivia_holiday_providers_7 =>
      'Día de los Difuntos';

  @override
  String get providers_country_bolivia_holiday_providers_8 => 'Navidad';

  @override
  String get providers_country_china_holiday_providers_0 => 'Año Nuevo Chino';

  @override
  String get providers_country_china_holiday_providers_1 =>
      'Festival de Qingming (Día de Barrido de Tumbas)';

  @override
  String get providers_country_china_holiday_providers_2 =>
      'Día Internacional de los Trabajadores';

  @override
  String get providers_country_china_holiday_providers_3 =>
      'Festival del Bote Dragón';

  @override
  String get providers_country_china_holiday_providers_4 =>
      'Festival del Medio Otoño';

  @override
  String get providers_country_china_holiday_providers_5 => 'Día Nacional';

  @override
  String get providers_country_colombia_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_colombia_holiday_providers_1 => 'Epifanía';

  @override
  String get providers_country_colombia_holiday_providers_2 =>
      'Día de San José';

  @override
  String get providers_country_colombia_holiday_providers_3 => 'Jueves Santo';

  @override
  String get providers_country_colombia_holiday_providers_4 => 'Viernes Santo';

  @override
  String get providers_country_colombia_holiday_providers_5 =>
      'Día del Trabajo';

  @override
  String get providers_country_colombia_holiday_providers_6 =>
      'Ascensión de Jesucristo';

  @override
  String get providers_country_colombia_holiday_providers_7 => 'Corpus Christi';

  @override
  String get providers_country_colombia_holiday_providers_8 =>
      'Sagrado Corazón';

  @override
  String get providers_country_colombia_holiday_providers_9 =>
      'Día de la Independencia de Colombia';

  @override
  String get providers_country_colombia_holiday_providers_10 =>
      'Batalla de Boyacá';

  @override
  String get providers_country_colombia_holiday_providers_11 =>
      'Asunción de la Virgen';

  @override
  String get providers_country_colombia_holiday_providers_12 =>
      'Día de la Raza';

  @override
  String get providers_country_colombia_holiday_providers_13 =>
      'Día de Todos los Santos';

  @override
  String get providers_country_colombia_holiday_providers_14 =>
      'Día de la Inmaculada Concepción';

  @override
  String get providers_country_colombia_holiday_providers_15 => 'Navidad';

  @override
  String get providers_country_french_guiana_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_french_guiana_holiday_providers_1 =>
      'Día del Trabajador';

  @override
  String get providers_country_french_guiana_holiday_providers_2 =>
      'Día de la Victoria en Europa';

  @override
  String get providers_country_french_guiana_holiday_providers_3 =>
      'Día de la Ascensión';

  @override
  String get providers_country_french_guiana_holiday_providers_4 =>
      'Lunes de Pentecostés';

  @override
  String get providers_country_french_guiana_holiday_providers_5 =>
      'Día de la Bastilla';

  @override
  String get providers_country_french_guiana_holiday_providers_6 =>
      'Asunción de María';

  @override
  String get providers_country_french_guiana_holiday_providers_7 =>
      'Día de Todos los Santos';

  @override
  String get providers_country_french_guiana_holiday_providers_8 =>
      'Día del Armisticio';

  @override
  String get providers_country_french_guiana_holiday_providers_9 => 'Navidad';

  @override
  String get providers_country_guyana_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_guyana_holiday_providers_1 =>
      'Día de la República';

  @override
  String get providers_country_guyana_holiday_providers_2 => 'Phagwah';

  @override
  String get providers_country_guyana_holiday_providers_3 => 'Viernes Santo';

  @override
  String get providers_country_guyana_holiday_providers_4 => 'Lunes de Pascua';

  @override
  String get providers_country_guyana_holiday_providers_5 => 'Día del Trabajo';

  @override
  String get providers_country_guyana_holiday_providers_6 =>
      'Día de la Llegada';

  @override
  String get providers_country_guyana_holiday_providers_7 =>
      'Día de la Independencia';

  @override
  String get providers_country_guyana_holiday_providers_8 => 'Día de CARICOM';

  @override
  String get providers_country_guyana_holiday_providers_9 =>
      'Día de la Emancipación';

  @override
  String get providers_country_guyana_holiday_providers_10 => 'Deepavali';

  @override
  String get providers_country_guyana_holiday_providers_11 => 'Navidad';

  @override
  String get providers_country_guyana_holiday_providers_12 => 'Boxing Day';

  @override
  String get providers_country_guyana_holiday_providers_13 => 'Youman-Nabi';

  @override
  String get providers_country_guyana_holiday_providers_14 => 'Eid-ul-Adha';

  @override
  String get providers_country_india_holiday_providers_0 =>
      'Día de la República';

  @override
  String get providers_country_india_holiday_providers_1 =>
      'Jayanti de Ambedkar';

  @override
  String get providers_country_india_holiday_providers_2 =>
      'Día de la Independencia';

  @override
  String get providers_country_india_holiday_providers_3 => 'Jayanti de Gandhi';

  @override
  String get providers_country_japan_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_japan_holiday_providers_1 =>
      'Día de la Mayoría de Edad';

  @override
  String get providers_country_japan_holiday_providers_2 =>
      'Día de la Fundación';

  @override
  String get providers_country_japan_holiday_providers_3 => 'Día de Shōwa';

  @override
  String get providers_country_japan_holiday_providers_4 =>
      'Día de la Constitución';

  @override
  String get providers_country_japan_holiday_providers_5 =>
      'Día de la Naturaleza';

  @override
  String get providers_country_japan_holiday_providers_6 => 'Día del Niño';

  @override
  String get providers_country_japan_holiday_providers_7 => 'Día del Mar';

  @override
  String get providers_country_japan_holiday_providers_8 => 'Día de la Montaña';

  @override
  String get providers_country_japan_holiday_providers_9 =>
      'Día del Respeto a los Mayores';

  @override
  String get providers_country_japan_holiday_providers_10 =>
      'Día de la Cultura';

  @override
  String get providers_country_japan_holiday_providers_11 =>
      'Día de Acción de Gracias por el Trabajo';

  @override
  String get providers_country_japan_holiday_providers_12 =>
      'El cumpleaños del Emperador Tenchobushi';

  @override
  String get providers_country_japan_holiday_providers_13 =>
      'El cumpleaños del Emperador';

  @override
  String get providers_country_japan_holiday_providers_14 =>
      'Día de la Salud y el Deporte';

  @override
  String get providers_country_japan_holiday_providers_15 => 'Día del Deporte';

  @override
  String get providers_country_japan_holiday_providers_16 =>
      'Día del Equinoccio Vernal';

  @override
  String get providers_country_japan_holiday_providers_17 =>
      'Día del Equinoccio Otoñal';

  @override
  String get providers_country_paraguay_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_paraguay_holiday_providers_1 =>
      'Día de los Héroes';

  @override
  String get providers_country_paraguay_holiday_providers_2 =>
      'Día del Trabajo';

  @override
  String get providers_country_paraguay_holiday_providers_3 =>
      'Independencia del Paraguay';

  @override
  String get providers_country_paraguay_holiday_providers_4 =>
      'Independencia del Paraguay';

  @override
  String get providers_country_paraguay_holiday_providers_5 =>
      'Armisticio del Chaco';

  @override
  String get providers_country_paraguay_holiday_providers_6 =>
      'Fundación de Asunción';

  @override
  String get providers_country_paraguay_holiday_providers_7 =>
      'Victoria de la Batalla de Boquerón';

  @override
  String get providers_country_paraguay_holiday_providers_8 =>
      'Virgen de Caacupé';

  @override
  String get providers_country_paraguay_holiday_providers_9 => 'Navidad';

  @override
  String get providers_country_peru_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_peru_holiday_providers_1 => 'Jueves Santo';

  @override
  String get providers_country_peru_holiday_providers_2 =>
      'Día Internacional de los Trabajadores';

  @override
  String get providers_country_peru_holiday_providers_3 =>
      'San Pedro y San Pablo';

  @override
  String get providers_country_peru_holiday_providers_4 =>
      'Día de la Independencia';

  @override
  String get providers_country_peru_holiday_providers_5 =>
      'Día de la Independencia';

  @override
  String get providers_country_peru_holiday_providers_6 => 'Santa Rosa de Lima';

  @override
  String get providers_country_peru_holiday_providers_7 => 'Batalla de Angamos';

  @override
  String get providers_country_peru_holiday_providers_8 =>
      'Día de Todos los Santos';

  @override
  String get providers_country_peru_holiday_providers_9 =>
      'Inmaculada Concepción';

  @override
  String get providers_country_peru_holiday_providers_10 => 'Navidad';

  @override
  String get providers_country_russia_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_russia_holiday_providers_1 =>
      'Vacaciones de Año Nuevo';

  @override
  String get providers_country_russia_holiday_providers_2 =>
      'Vacaciones de Año Nuevo';

  @override
  String get providers_country_russia_holiday_providers_3 =>
      'Vacaciones de Año Nuevo';

  @override
  String get providers_country_russia_holiday_providers_4 =>
      'Vacaciones de Año Nuevo';

  @override
  String get providers_country_russia_holiday_providers_5 =>
      'Vacaciones de Año Nuevo';

  @override
  String get providers_country_russia_holiday_providers_6 => 'Navidad ortodoxa';

  @override
  String get providers_country_russia_holiday_providers_7 =>
      'Día del Defensor de la Patria';

  @override
  String get providers_country_russia_holiday_providers_8 =>
      'Día Internacional de la Mujer';

  @override
  String get providers_country_russia_holiday_providers_9 => 'Día del Trabajo';

  @override
  String get providers_country_russia_holiday_providers_10 =>
      'Día de la Victoria';

  @override
  String get providers_country_russia_holiday_providers_11 => 'Día de Rusia';

  @override
  String get providers_country_russia_holiday_providers_12 =>
      'Día de la Unidad';

  @override
  String get providers_country_spain_holiday_providers_0 => 'Epifanía';

  @override
  String get providers_country_spain_holiday_providers_1 => 'Día del Trabajo';

  @override
  String get providers_country_spain_holiday_providers_2 => 'Fiesta Nacional';

  @override
  String get providers_country_spain_holiday_providers_3 =>
      'Día de Todos los Santos';

  @override
  String get providers_country_spain_holiday_providers_4 =>
      'Día de la Constitución';

  @override
  String get providers_country_suriname_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_suriname_holiday_providers_1 =>
      'Año Nuevo Chino';

  @override
  String get providers_country_suriname_holiday_providers_2 =>
      'Phagwah (Holi Phagwa)';

  @override
  String get providers_country_suriname_holiday_providers_3 => 'Eid al-Fitr';

  @override
  String get providers_country_suriname_holiday_providers_4 =>
      'Día del Trabajo';

  @override
  String get providers_country_suriname_holiday_providers_5 => 'Eid al-Adha';

  @override
  String get providers_country_suriname_holiday_providers_6 =>
      'Día de la Emancipación (Ketikoti)';

  @override
  String get providers_country_suriname_holiday_providers_7 =>
      'Día de los Pueblos Indígenas';

  @override
  String get providers_country_suriname_holiday_providers_8 =>
      'Día de los Marrones';

  @override
  String get providers_country_suriname_holiday_providers_9 => 'Diwali';

  @override
  String get providers_country_suriname_holiday_providers_10 =>
      'Día de la Independencia';

  @override
  String get providers_country_suriname_holiday_providers_11 => 'Navidad';

  @override
  String get providers_country_suriname_holiday_providers_12 =>
      'Día de San Esteban';

  @override
  String get providers_country_uruguay_holiday_providers_0 => 'Año Nuevo';

  @override
  String get providers_country_uruguay_holiday_providers_1 => 'Día del Niño';

  @override
  String get providers_country_uruguay_holiday_providers_2 =>
      'Día del Desembarco de los 33 Patriotas';

  @override
  String get providers_country_uruguay_holiday_providers_3 =>
      'Día Internacional de los Trabajadores';

  @override
  String get providers_country_uruguay_holiday_providers_4 =>
      'Batalla de Las Piedras';

  @override
  String get providers_country_uruguay_holiday_providers_5 =>
      'Cumpleaños de José Gervasio Artigas y Día del Nunca Más';

  @override
  String get providers_country_uruguay_holiday_providers_6 =>
      'Día de la Constitución';

  @override
  String get providers_country_uruguay_holiday_providers_7 =>
      'Día de la Independencia';

  @override
  String get providers_country_uruguay_holiday_providers_8 => 'Día de la Raza';

  @override
  String get providers_country_uruguay_holiday_providers_9 =>
      'Día de los Muertos';

  @override
  String get providers_country_uruguay_holiday_providers_10 => 'Navidad';

  @override
  String get providers_country_uruguay_holiday_providers_11 => 'Carnaval';

  @override
  String get providers_country_uruguay_holiday_providers_12 => 'Carnaval';

  @override
  String get providers_country_united_states_holiday_providers_0 =>
      'Día de Año Nuevo';

  @override
  String get providers_country_united_states_holiday_providers_1 =>
      'Día de Martin Luther King Jr.';

  @override
  String get providers_country_united_states_holiday_providers_2 =>
      'Día de los Presidentes';

  @override
  String get providers_country_united_states_holiday_providers_3 =>
      'Día de los Caídos';

  @override
  String get providers_country_united_states_holiday_providers_4 =>
      'Día Nacional de la Independencia de Juneteenth';

  @override
  String get providers_country_united_states_holiday_providers_5 =>
      'Día de la Independencia';

  @override
  String get providers_country_united_states_holiday_providers_6 =>
      'Día del Trabajo';

  @override
  String get providers_country_united_states_holiday_providers_7 =>
      'Día de la Raza';

  @override
  String get providers_country_united_states_holiday_providers_8 =>
      'Día de los Veteranos';

  @override
  String get providers_country_united_states_holiday_providers_9 =>
      'Día de Acción de Gracias';

  @override
  String get providers_country_united_states_holiday_providers_10 => 'Navidad';

  @override
  String get providers_country_united_states_holiday_providers_11 =>
      'Día de Truman';

  @override
  String get providers_country_united_states_holiday_providers_12 =>
      'Día de los Pueblos Indígenas';

  @override
  String get providers_country_united_states_holiday_providers_13 =>
      'Cumpleaños de Lincoln';

  @override
  String get providers_religion_catholic_providers_0 =>
      'Día de Todos los Santos';

  @override
  String get providers_religion_catholic_providers_1 =>
      'Día de los Fieles Difuntos';

  @override
  String get providers_religion_catholic_providers_2 => 'Día de la Ascensión';

  @override
  String get providers_religion_catholic_providers_3 => 'Día de la Asunción';

  @override
  String get providers_religion_catholic_providers_4 => 'Navidad';

  @override
  String get providers_religion_catholic_providers_5 => 'Corpus Christi';

  @override
  String get providers_religion_catholic_providers_6 => 'Lunes de Pascua';

  @override
  String get providers_religion_catholic_providers_7 => 'Domingo de Pascua';

  @override
  String get providers_religion_catholic_providers_8 => 'Epifanía';

  @override
  String get providers_religion_catholic_providers_9 => 'Viernes Santo';

  @override
  String get providers_religion_catholic_providers_10 =>
      'Día de la Inmaculada Concepción';

  @override
  String get providers_religion_catholic_providers_11 => 'Jueves Santo';

  @override
  String get providers_religion_catholic_providers_12 =>
      'Nuestra Señora de Aparecida';

  @override
  String get providers_religion_catholic_providers_13 =>
      'Nuestra Señora de la Victoria';

  @override
  String get providers_religion_catholic_providers_14 => 'Pentecostés';

  @override
  String get providers_religion_catholic_providers_15 => 'Sagrado Corazón';

  @override
  String get providers_religion_catholic_providers_16 => 'Día de San José';

  @override
  String get providers_religion_catholic_providers_17 =>
      'San Pedro y San Pablo';

  @override
  String get providers_religion_catholic_providers_18 => 'Santa Rosa de Lima';

  @override
  String get providers_religion_catholic_providers_19 => 'Virgen de Caacupé';

  @override
  String get providers_holiday_providers_0 => 'Brasil';

  @override
  String get providers_holiday_providers_1 => 'Argentina';

  @override
  String get providers_holiday_providers_2 => 'Bolivia';

  @override
  String get providers_holiday_providers_3 => 'Perú';

  @override
  String get providers_holiday_providers_4 => 'Paraguay';

  @override
  String get providers_holiday_providers_5 => 'Colombia';

  @override
  String get providers_holiday_providers_6 => 'Guayana Francesa';

  @override
  String get providers_holiday_providers_7 => 'Surinam';

  @override
  String get providers_holiday_providers_8 => 'Guyana';

  @override
  String get providers_holiday_providers_10 => 'España';

  @override
  String get providers_holiday_providers_11 => 'Rusia';

  @override
  String get providers_holiday_providers_12 => 'Japón';

  @override
  String get providers_holiday_providers_13 => 'China';

  @override
  String get providers_holiday_providers_14 => 'India';

  @override
  String get providers_holiday_providers_15 => 'Uruguay';

  @override
  String get providers_holiday_providers_16 => 'Católico';

  @override
  String get providers_holiday_providers_17 => 'Estados Unidos de América';
}
