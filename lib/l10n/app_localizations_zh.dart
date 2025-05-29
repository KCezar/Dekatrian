// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get main_title => '德卡特里安日历';

  @override
  String get main_0 => '首页';

  @override
  String get main_1 => 'Dekatrian';

  @override
  String get main_2 => '开发';

  @override
  String get main_3 => '设置';

  @override
  String get main_4 => '简史';

  @override
  String get main_5 => '日历';

  @override
  String get main_6 => '开发';

  @override
  String get main_7 => '德卡特里安日历';

  @override
  String get domain_models_lunar_date_0 => '节假日';

  @override
  String get presentation_screens_tela_configuracoes_0 => '设置';

  @override
  String get presentation_screens_tela_configuracoes_1 => '假期';

  @override
  String get presentation_screens_tela_dekatrian_0 => 'Dekatrian 信息';

  @override
  String get presentation_screens_tela_dekatrian_1 =>
      'Dekatrian 是由 Scicast 播客团队成员 Roberto Spinelli 构思的日历。\n\nRoberto Spinelli。';

  @override
  String get presentation_screens_tela_dekatrian_2 =>
      '访问 Deviante 页面或 Dekatrian 日历的 Facebook 群组以了解更多信息。';

  @override
  String get presentation_screens_tela_dekatrian_3 =>
      'http://www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_4 =>
      'www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_5 =>
      'Dekatrian 不是一个新概念；这种日历形式早在古代就已使用，例如在埃及和希腊。月历基于月相测量时间，被世界许多文化采用。最近一次尝试由 Moses Bruines Cotsworth 完成，他创建了一个 13 个月的 Yearal 日历，每月 28 天。';

  @override
  String get presentation_screens_tela_dekatrian_6 => '为什么采用 Dekatrian？';

  @override
  String get presentation_screens_tela_dekatrian_7 =>
      '当前使用的公历存在多个问题：月份长度不一致（28、30 或 31 天），日期每年会改变星期，闰年校正复杂。此外，其结构受历史政治决策影响，缺乏自然或逻辑模式。Dekatrian 通过提供等长月份、简化规划并更好地契合自然周期来修正这些扭曲。';

  @override
  String get presentation_screens_tela_desenvolvimento_0 => '开发信息';

  @override
  String get presentation_screens_tela_desenvolvimento_1 => '该程序正在由 ';

  @override
  String get presentation_screens_tela_desenvolvimento_2 =>
      ' 开发。如有批评、建议或联系，请发送电子邮件至 ';

  @override
  String get presentation_screens_tela_desenvolvimento_3 =>
      '此程序的灵感来自 Lario Diniz 开发的 Python Dekatrian 应用——一款优秀且编写良好的应用。';

  @override
  String get presentation_screens_tela_desenvolvimento_4 => '代码库：';

  @override
  String get presentation_screens_tela_desenvolvimento_5 =>
      '有一天我更换了手机，Play 商店中已无法找到该应用，因此我决定用 Flutter 重制该版本。\n\n感谢 Lario Diniz 的灵感和 Dekatrian 源代码，它帮助我了解了 Dekatrian 日历的工作原理。\n\n我将像 Lario 一样，以 MIT 许可证发布此项目，供任何人学习或创建自己的版本。\n\n';

  @override
  String presentation_screens_tela_desenvolvimento_6(String version) {
    return '应用版本：$version';
  }

  @override
  String get presentation_screens_tela_desenvolvimento_7 => '开发中使用的技术：';

  @override
  String presentation_screens_tela_feriados_0(String error) {
    return '加载错误：$error';
  }

  @override
  String get presentation_screens_tela_feriados_1 => '假日';

  @override
  String get presentation_screens_tela_feriados_2 => '搜索任务…';

  @override
  String get presentation_screens_tela_feriados_3 => '无已保存的偏好';

  @override
  String get presentation_screens_tela_feriados_4 => '新建';

  @override
  String get presentation_screens_tela_inicial_0 => '日';

  @override
  String get presentation_screens_tela_inicial_1 => '月';

  @override
  String get presentation_screens_tela_inicial_2 => '年';

  @override
  String get presentation_screens_tela_novo_feriado_0 => '新假期';

  @override
  String get presentation_screens_tela_novo_feriado_1 => '搜索';

  @override
  String get presentation_screens_tela_novo_feriado_2 => '国家';

  @override
  String get presentation_screens_tela_novo_feriado_3 => '地区';

  @override
  String get presentation_screens_tela_novo_feriado_4 => '宗教';

  @override
  String get presentation_screens_tela_novo_feriado_5 => '偏好保存成功！';

  @override
  String get presentation_screens_tela_novo_feriado_6 => '保存';

  @override
  String get presentation_screens_tela_novo_feriado_7 => '无';

  @override
  String get presentation_widgets_dia_calendario_0 => '周六 - (周末)';

  @override
  String get presentation_widgets_dia_calendario_1 => '周日 - (周末)';

  @override
  String presentation_widgets_dia_calendario_2(String n) {
    return '（节假日）：$n';
  }

  @override
  String get presentation_widgets_dia_calendario_3 => '周末';

  @override
  String get presentation_widgets_dia_calendario_4 => '节假日';

  @override
  String get providers_country_brazil_holiday_providers_0 => '元旦';

  @override
  String get providers_country_brazil_holiday_providers_1 => '提拉登特斯日';

  @override
  String get providers_country_brazil_holiday_providers_2 => '劳动节';

  @override
  String get providers_country_brazil_holiday_providers_3 => '1932年宪法革命纪念日';

  @override
  String get providers_country_brazil_holiday_providers_4 => '独立日';

  @override
  String get providers_country_brazil_holiday_providers_5 => '共和国公告日';

  @override
  String get providers_country_brazil_holiday_providers_6 => '狂欢节';

  @override
  String get providers_country_brazil_holiday_providers_7 => '狂欢节';

  @override
  String get providers_country_brazil_holiday_providers_8 => '圣灵州庆祝日';

  @override
  String get providers_country_brazil_holiday_providers_9 => '黑人意识日';

  @override
  String get providers_country_argentina_holiday_providers_0 => '元旦';

  @override
  String get providers_country_argentina_holiday_providers_1 => '狂欢节';

  @override
  String get providers_country_argentina_holiday_providers_2 => '狂欢节';

  @override
  String get providers_country_argentina_holiday_providers_3 => '真理与正义纪念日';

  @override
  String get providers_country_argentina_holiday_providers_4 =>
      '马尔维纳斯战争退伍军人和阵亡者纪念日';

  @override
  String get providers_country_argentina_holiday_providers_5 => '劳动节';

  @override
  String get providers_country_argentina_holiday_providers_6 => '五月革命';

  @override
  String get providers_country_argentina_holiday_providers_7 =>
      '马丁·米格尔·德·盖梅斯将军逝世纪念日';

  @override
  String get providers_country_argentina_holiday_providers_8 =>
      '曼努埃尔·贝尔格拉诺将军纪念日';

  @override
  String get providers_country_argentina_holiday_providers_9 => '独立日';

  @override
  String get providers_country_argentina_holiday_providers_10 =>
      '何塞·德·圣马丁将军纪念日';

  @override
  String get providers_country_argentina_holiday_providers_11 => '尊重文化多样性日';

  @override
  String get providers_country_argentina_holiday_providers_12 => '国家主权日';

  @override
  String get providers_country_argentina_holiday_providers_13 => '无原罪圣母节';

  @override
  String get providers_country_argentina_holiday_providers_14 => '圣诞节';

  @override
  String get providers_country_bolivia_holiday_providers_0 => '元旦';

  @override
  String get providers_country_bolivia_holiday_providers_1 => '多民族国家成立纪念日';

  @override
  String get providers_country_bolivia_holiday_providers_2 => '狂欢节星期一';

  @override
  String get providers_country_bolivia_holiday_providers_3 => '狂欢节星期二';

  @override
  String get providers_country_bolivia_holiday_providers_4 => '劳动节';

  @override
  String get providers_country_bolivia_holiday_providers_5 => '艾马拉新年';

  @override
  String get providers_country_bolivia_holiday_providers_6 => '独立日';

  @override
  String get providers_country_bolivia_holiday_providers_7 => '万灵节';

  @override
  String get providers_country_bolivia_holiday_providers_8 => '圣诞节';

  @override
  String get providers_country_china_holiday_providers_0 => '中国新年';

  @override
  String get providers_country_china_holiday_providers_1 => '清明节（扫墓节）';

  @override
  String get providers_country_china_holiday_providers_2 => '国际劳动节';

  @override
  String get providers_country_china_holiday_providers_3 => '端午节';

  @override
  String get providers_country_china_holiday_providers_4 => '中秋节';

  @override
  String get providers_country_china_holiday_providers_5 => '国庆节';

  @override
  String get providers_country_colombia_holiday_providers_0 => '元旦';

  @override
  String get providers_country_colombia_holiday_providers_1 => '主显节';

  @override
  String get providers_country_colombia_holiday_providers_2 => '圣约瑟夫日';

  @override
  String get providers_country_colombia_holiday_providers_3 => '圣周四';

  @override
  String get providers_country_colombia_holiday_providers_4 => '耶稣受难日';

  @override
  String get providers_country_colombia_holiday_providers_5 => '劳动节';

  @override
  String get providers_country_colombia_holiday_providers_6 => '耶稣基督升天节';

  @override
  String get providers_country_colombia_holiday_providers_7 => '基督圣体节';

  @override
  String get providers_country_colombia_holiday_providers_8 => '圣心节';

  @override
  String get providers_country_colombia_holiday_providers_9 => '哥伦比亚独立日';

  @override
  String get providers_country_colombia_holiday_providers_10 => '博亚卡战役纪念日';

  @override
  String get providers_country_colombia_holiday_providers_11 => '圣母升天节';

  @override
  String get providers_country_colombia_holiday_providers_12 => '哥伦布日';

  @override
  String get providers_country_colombia_holiday_providers_13 => '万圣节';

  @override
  String get providers_country_colombia_holiday_providers_14 => '圣母无染原罪节';

  @override
  String get providers_country_colombia_holiday_providers_15 => '圣诞节';

  @override
  String get providers_country_french_guiana_holiday_providers_0 => '元旦';

  @override
  String get providers_country_french_guiana_holiday_providers_1 => '劳动节';

  @override
  String get providers_country_french_guiana_holiday_providers_2 => '欧洲胜利日';

  @override
  String get providers_country_french_guiana_holiday_providers_3 => '耶稣升天日';

  @override
  String get providers_country_french_guiana_holiday_providers_4 => '圣灵降临节周一';

  @override
  String get providers_country_french_guiana_holiday_providers_5 => '巴士底日';

  @override
  String get providers_country_french_guiana_holiday_providers_6 => '圣母升天日';

  @override
  String get providers_country_french_guiana_holiday_providers_7 => '万圣节';

  @override
  String get providers_country_french_guiana_holiday_providers_8 => '停战纪念日';

  @override
  String get providers_country_french_guiana_holiday_providers_9 => '圣诞节';

  @override
  String get providers_country_guyana_holiday_providers_0 => '元旦';

  @override
  String get providers_country_guyana_holiday_providers_1 => '共和国日';

  @override
  String get providers_country_guyana_holiday_providers_2 => '法格瓦节';

  @override
  String get providers_country_guyana_holiday_providers_3 => '耶稣受难日';

  @override
  String get providers_country_guyana_holiday_providers_4 => '复活节星期一';

  @override
  String get providers_country_guyana_holiday_providers_5 => '劳动节';

  @override
  String get providers_country_guyana_holiday_providers_6 => '到来日';

  @override
  String get providers_country_guyana_holiday_providers_7 => '独立日';

  @override
  String get providers_country_guyana_holiday_providers_8 => 'CARICOM日';

  @override
  String get providers_country_guyana_holiday_providers_9 => '解放日';

  @override
  String get providers_country_guyana_holiday_providers_10 => '排灯节';

  @override
  String get providers_country_guyana_holiday_providers_11 => '圣诞节';

  @override
  String get providers_country_guyana_holiday_providers_12 => '节礼日';

  @override
  String get providers_country_guyana_holiday_providers_13 => '尤曼-纳比';

  @override
  String get providers_country_guyana_holiday_providers_14 => '宰牲节';

  @override
  String get providers_country_india_holiday_providers_0 => '共和国日';

  @override
  String get providers_country_india_holiday_providers_1 => '安贝德卡尔·贾扬蒂节';

  @override
  String get providers_country_india_holiday_providers_2 => '独立日';

  @override
  String get providers_country_india_holiday_providers_3 => '甘地诞辰节';

  @override
  String get providers_country_japan_holiday_providers_0 => '元旦';

  @override
  String get providers_country_japan_holiday_providers_1 => '成人节';

  @override
  String get providers_country_japan_holiday_providers_2 => '建国纪念日';

  @override
  String get providers_country_japan_holiday_providers_3 => '昭和之日';

  @override
  String get providers_country_japan_holiday_providers_4 => '宪法纪念日';

  @override
  String get providers_country_japan_holiday_providers_5 => '绿化之日';

  @override
  String get providers_country_japan_holiday_providers_6 => '儿童节';

  @override
  String get providers_country_japan_holiday_providers_7 => '海洋节';

  @override
  String get providers_country_japan_holiday_providers_8 => '山之日';

  @override
  String get providers_country_japan_holiday_providers_9 => '敬老日';

  @override
  String get providers_country_japan_holiday_providers_10 => '文化日';

  @override
  String get providers_country_japan_holiday_providers_11 => '勤劳感恩日';

  @override
  String get providers_country_japan_holiday_providers_12 => '天长节';

  @override
  String get providers_country_japan_holiday_providers_13 => '天皇诞生日';

  @override
  String get providers_country_japan_holiday_providers_14 => '健康与体育日';

  @override
  String get providers_country_japan_holiday_providers_15 => '体育日';

  @override
  String get providers_country_japan_holiday_providers_16 => '春分日';

  @override
  String get providers_country_japan_holiday_providers_17 => '秋分日';

  @override
  String get providers_country_paraguay_holiday_providers_0 => '元旦';

  @override
  String get providers_country_paraguay_holiday_providers_1 => '英雄日';

  @override
  String get providers_country_paraguay_holiday_providers_2 => '国际劳动节';

  @override
  String get providers_country_paraguay_holiday_providers_3 => '巴拉圭独立日';

  @override
  String get providers_country_paraguay_holiday_providers_4 => '巴拉圭独立日';

  @override
  String get providers_country_paraguay_holiday_providers_5 => '查科停战日';

  @override
  String get providers_country_paraguay_holiday_providers_6 => '亚松森建都日';

  @override
  String get providers_country_paraguay_holiday_providers_7 => '博克龙战役胜利日';

  @override
  String get providers_country_paraguay_holiday_providers_8 => '卡库佩圣母节';

  @override
  String get providers_country_paraguay_holiday_providers_9 => '圣诞节';

  @override
  String get providers_country_peru_holiday_providers_0 => '元旦';

  @override
  String get providers_country_peru_holiday_providers_1 => '圣周四';

  @override
  String get providers_country_peru_holiday_providers_2 => '国际劳动节';

  @override
  String get providers_country_peru_holiday_providers_3 => '圣彼得和圣保罗节';

  @override
  String get providers_country_peru_holiday_providers_4 => '独立日（一）';

  @override
  String get providers_country_peru_holiday_providers_5 => '独立日（二）';

  @override
  String get providers_country_peru_holiday_providers_6 => '利马圣罗莎日';

  @override
  String get providers_country_peru_holiday_providers_7 => '安加莫斯战役日';

  @override
  String get providers_country_peru_holiday_providers_8 => '诸圣节';

  @override
  String get providers_country_peru_holiday_providers_9 => '圣母无染原罪节';

  @override
  String get providers_country_peru_holiday_providers_10 => '圣诞节';

  @override
  String get providers_country_russia_holiday_providers_0 => '元旦';

  @override
  String get providers_country_russia_holiday_providers_1 => '元旦假期';

  @override
  String get providers_country_russia_holiday_providers_2 => '元旦假期';

  @override
  String get providers_country_russia_holiday_providers_3 => '元旦假期';

  @override
  String get providers_country_russia_holiday_providers_4 => '元旦假期';

  @override
  String get providers_country_russia_holiday_providers_5 => '元旦假期';

  @override
  String get providers_country_russia_holiday_providers_6 => '东正教圣诞节';

  @override
  String get providers_country_russia_holiday_providers_7 => '卫国战争胜利日';

  @override
  String get providers_country_russia_holiday_providers_8 => '国际妇女节';

  @override
  String get providers_country_russia_holiday_providers_9 => '劳动节';

  @override
  String get providers_country_russia_holiday_providers_10 => '胜利日';

  @override
  String get providers_country_russia_holiday_providers_11 => '俄罗斯日';

  @override
  String get providers_country_russia_holiday_providers_12 => '团结日';

  @override
  String get providers_country_spain_holiday_providers_0 => '主显节';

  @override
  String get providers_country_spain_holiday_providers_1 => '劳动节';

  @override
  String get providers_country_spain_holiday_providers_2 => '国庆日';

  @override
  String get providers_country_spain_holiday_providers_3 => '诸圣节';

  @override
  String get providers_country_spain_holiday_providers_4 => '宪法日';

  @override
  String get providers_country_suriname_holiday_providers_0 => '元旦';

  @override
  String get providers_country_suriname_holiday_providers_1 => '中国农历新年';

  @override
  String get providers_country_suriname_holiday_providers_2 => '法格瓦（胡里法格瓦）';

  @override
  String get providers_country_suriname_holiday_providers_3 => '开斋节';

  @override
  String get providers_country_suriname_holiday_providers_4 => '劳动节';

  @override
  String get providers_country_suriname_holiday_providers_5 => '古尔班节';

  @override
  String get providers_country_suriname_holiday_providers_6 => '解放日（Ketikoti）';

  @override
  String get providers_country_suriname_holiday_providers_7 => '原住民日';

  @override
  String get providers_country_suriname_holiday_providers_8 => '黑人后裔日';

  @override
  String get providers_country_suriname_holiday_providers_9 => '排灯节';

  @override
  String get providers_country_suriname_holiday_providers_10 => '独立日';

  @override
  String get providers_country_suriname_holiday_providers_11 => '圣诞节';

  @override
  String get providers_country_suriname_holiday_providers_12 => '节礼日';

  @override
  String get providers_country_uruguay_holiday_providers_0 => '元旦';

  @override
  String get providers_country_uruguay_holiday_providers_1 => '儿童节';

  @override
  String get providers_country_uruguay_holiday_providers_2 => '33爱国者登陆日';

  @override
  String get providers_country_uruguay_holiday_providers_3 => '国际劳动节';

  @override
  String get providers_country_uruguay_holiday_providers_4 => '拉斯·皮耶德拉斯战役';

  @override
  String get providers_country_uruguay_holiday_providers_5 =>
      '何塞·赫尔瓦西奥·阿尔蒂加斯诞辰暨永不再来日';

  @override
  String get providers_country_uruguay_holiday_providers_6 => '宪法日';

  @override
  String get providers_country_uruguay_holiday_providers_7 => '独立日';

  @override
  String get providers_country_uruguay_holiday_providers_8 => '族裔日';

  @override
  String get providers_country_uruguay_holiday_providers_9 => '逝者之日';

  @override
  String get providers_country_uruguay_holiday_providers_10 => '圣诞节';

  @override
  String get providers_country_uruguay_holiday_providers_11 => '狂欢节';

  @override
  String get providers_country_uruguay_holiday_providers_12 => '狂欢节';

  @override
  String get providers_religion_catholic_providers_0 => '圣周四';

  @override
  String get providers_religion_catholic_providers_1 => '耶稣受难日';

  @override
  String get providers_religion_catholic_providers_2 => '复活节';

  @override
  String get providers_religion_catholic_providers_3 => '复活节星期一';

  @override
  String get providers_religion_catholic_providers_4 => '耶稣升天节';

  @override
  String get providers_religion_catholic_providers_5 => '圣灵降临节';

  @override
  String get providers_religion_catholic_providers_6 => '圣体节';

  @override
  String get providers_religion_catholic_providers_7 => '诸圣纪念日';

  @override
  String get providers_religion_catholic_providers_8 => '显现圣母节';

  @override
  String get providers_religion_catholic_providers_9 => '圣诞节';

  @override
  String get providers_religion_catholic_providers_10 => '胜利圣母节';

  @override
  String get providers_holiday_providers_0 => '巴西';

  @override
  String get providers_holiday_providers_1 => '阿根廷';

  @override
  String get providers_holiday_providers_2 => '玻利维亚';

  @override
  String get providers_holiday_providers_3 => '秘鲁';

  @override
  String get providers_holiday_providers_4 => '巴拉圭';

  @override
  String get providers_holiday_providers_5 => '哥伦比亚';

  @override
  String get providers_holiday_providers_6 => '法属圭亚那';

  @override
  String get providers_holiday_providers_7 => '苏里南';

  @override
  String get providers_holiday_providers_8 => '圭亚那';

  @override
  String get providers_holiday_providers_10 => '西班牙';

  @override
  String get providers_holiday_providers_11 => '俄罗斯';

  @override
  String get providers_holiday_providers_12 => '日本';

  @override
  String get providers_holiday_providers_13 => '中国';

  @override
  String get providers_holiday_providers_14 => '印度';

  @override
  String get providers_holiday_providers_15 => '乌拉圭';

  @override
  String get providers_holiday_providers_16 => '天主教';
}
