// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get main_title => 'デカトリアンカレンダー';

  @override
  String get main_0 => 'ホーム';

  @override
  String get main_1 => 'Dekatrian';

  @override
  String get main_2 => '開発';

  @override
  String get main_3 => '設定';

  @override
  String get main_4 => '簡単な歴史';

  @override
  String get main_5 => 'カレンダー';

  @override
  String get main_6 => '開発';

  @override
  String get main_7 => 'デカトリアンカレンダー';

  @override
  String get domain_models_lunar_date_0 => '休日';

  @override
  String get presentation_screens_tela_configuracoes_0 => '設定';

  @override
  String get presentation_screens_tela_configuracoes_1 => '祝日';

  @override
  String get presentation_screens_tela_dekatrian_0 => 'Dekatrian情報';

  @override
  String get presentation_screens_tela_dekatrian_1 =>
      'DekatrianはScicastポッドキャストチームのメンバー、Roberto Spinelliによって考案されたカレンダーです。';

  @override
  String get presentation_screens_tela_dekatrian_2 =>
      '詳細はDevianteページまたはDekatrianカレンダーのFacebookグループをご覧ください。';

  @override
  String get presentation_screens_tela_dekatrian_3 =>
      'http://www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_4 =>
      'www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_5 =>
      'Dekatrianは新しいアイデアではありません。このカレンダー形式は古代エジプトやギリシャで使用されていました。月の相に基づいて時間を測定する太陰暦は、世界中の多くの文化で使用されています。Moses Bruines Cotsworthによる13ヶ月のYearalカレンダー（各月28日）はその最近の試みです。';

  @override
  String get presentation_screens_tela_dekatrian_6 => 'なぜDekatrianを採用するのか？';

  @override
  String get presentation_screens_tela_dekatrian_7 =>
      '現在使用されているグレゴリオ暦にはいくつかの問題があります：月の日数が不均等（28、30、31日）、日付は毎年曜日が変わる、うるう年の補正が複雑、歴史的政治的決定によって構造が影響を受けているなどです。Dekatrianは等長の月、計画の容易さ、自然サイクルとの調和を提供することでこれらの歪みを修正します。';

  @override
  String get presentation_screens_tela_desenvolvimento_0 => '開発情報';

  @override
  String get presentation_screens_tela_desenvolvimento_1 =>
      'このアプリは次によって開発されています：';

  @override
  String get presentation_screens_tela_desenvolvimento_2 =>
      '。フィードバックやお問い合わせは以下へメールしてください：';

  @override
  String get presentation_screens_tela_desenvolvimento_3 =>
      'このアプリはLario DinizによるPython版Dekatrianアプリからインスパイアされました—優れたよく書かれたアプリです。';

  @override
  String get presentation_screens_tela_desenvolvimento_4 => 'リポジトリ：';

  @override
  String get presentation_screens_tela_desenvolvimento_5 =>
      'ある日、携帯を変えた際にPlay Storeにアプリがなかったため、Flutter版を作成することにしました。\n\nDekatrianの仕組みを理解するのに役立ったLario Dinizのインスピレーションとソースコードに感謝します。\n\nLarioと同様に、このプロジェクトをMITライセンスで公開し、誰でもDekatrianのソースコードを学習または独自に利用できるようにします。\n\n';

  @override
  String presentation_screens_tela_desenvolvimento_6(String version) {
    return 'アプリバージョン：$version';
  }

  @override
  String get presentation_screens_tela_desenvolvimento_7 => '開発で使用されている技術：';

  @override
  String presentation_screens_tela_feriados_0(String error) {
    return '読み込みエラー：$error';
  }

  @override
  String get presentation_screens_tela_feriados_1 => '祝日';

  @override
  String get presentation_screens_tela_feriados_2 => 'タスクを検索…';

  @override
  String get presentation_screens_tela_feriados_3 => '保存された設定はありません';

  @override
  String get presentation_screens_tela_feriados_4 => '新規';

  @override
  String get presentation_screens_tela_inicial_0 => '日';

  @override
  String get presentation_screens_tela_inicial_1 => '月';

  @override
  String get presentation_screens_tela_inicial_2 => '年';

  @override
  String get presentation_screens_tela_novo_feriado_0 => '新しい祝日';

  @override
  String get presentation_screens_tela_novo_feriado_1 => '検索';

  @override
  String get presentation_screens_tela_novo_feriado_2 => '国';

  @override
  String get presentation_screens_tela_novo_feriado_3 => '地域';

  @override
  String get presentation_screens_tela_novo_feriado_4 => '宗教';

  @override
  String get presentation_screens_tela_novo_feriado_5 => '設定が正常に保存されました！';

  @override
  String get presentation_screens_tela_novo_feriado_6 => '保存';

  @override
  String get presentation_screens_tela_novo_feriado_7 => 'なし';

  @override
  String get presentation_widgets_dia_calendario_0 => '土曜日 - 週末';

  @override
  String get presentation_widgets_dia_calendario_1 => '日曜日 - 週末';

  @override
  String presentation_widgets_dia_calendario_2(String n) {
    return '（祝日）：$n';
  }

  @override
  String get presentation_widgets_dia_calendario_3 => '週末';

  @override
  String get presentation_widgets_dia_calendario_4 => '祝日';

  @override
  String get providers_country_brazil_holiday_providers_0 => '元日';

  @override
  String get providers_country_brazil_holiday_providers_1 => 'ティラデンチスの日';

  @override
  String get providers_country_brazil_holiday_providers_2 => 'メーデー';

  @override
  String get providers_country_brazil_holiday_providers_3 => '1932年立憲革命記念日';

  @override
  String get providers_country_brazil_holiday_providers_4 => '独立記念日';

  @override
  String get providers_country_brazil_holiday_providers_5 => '共和国成立記念日';

  @override
  String get providers_country_brazil_holiday_providers_6 => 'カーニバル';

  @override
  String get providers_country_brazil_holiday_providers_7 => 'カーニバル';

  @override
  String get providers_country_brazil_holiday_providers_8 => 'エスピリトサント州設立記念日';

  @override
  String get providers_country_brazil_holiday_providers_9 => '黒人意識の日';

  @override
  String get providers_country_argentina_holiday_providers_0 => '元日';

  @override
  String get providers_country_argentina_holiday_providers_1 => 'カーニバル';

  @override
  String get providers_country_argentina_holiday_providers_2 => 'カーニバル';

  @override
  String get providers_country_argentina_holiday_providers_3 => '真実と正義の記憶の日';

  @override
  String get providers_country_argentina_holiday_providers_4 =>
      'マルビナス戦争退役軍人および戦没者の日';

  @override
  String get providers_country_argentina_holiday_providers_5 => '労働者の日';

  @override
  String get providers_country_argentina_holiday_providers_6 => '5月革命';

  @override
  String get providers_country_argentina_holiday_providers_7 =>
      'マルティン・ミゲル・デ・ゲメス将軍の忌日';

  @override
  String get providers_country_argentina_holiday_providers_8 =>
      'マヌエル・ベルグラーノ将軍記念日';

  @override
  String get providers_country_argentina_holiday_providers_9 => '独立記念日';

  @override
  String get providers_country_argentina_holiday_providers_10 =>
      'ホセ・デ・サン・マルティン将軍記念日';

  @override
  String get providers_country_argentina_holiday_providers_11 => '文化的多様性尊重の日';

  @override
  String get providers_country_argentina_holiday_providers_12 => '国民主権の日';

  @override
  String get providers_country_argentina_holiday_providers_13 => '無原罪懐胎の祝日';

  @override
  String get providers_country_argentina_holiday_providers_14 => 'クリスマス';

  @override
  String get providers_country_bolivia_holiday_providers_0 => '元日';

  @override
  String get providers_country_bolivia_holiday_providers_1 => '多民族国家設立記念日';

  @override
  String get providers_country_bolivia_holiday_providers_2 => 'カーニバル月曜日';

  @override
  String get providers_country_bolivia_holiday_providers_3 => 'カーニバル火曜日';

  @override
  String get providers_country_bolivia_holiday_providers_4 => '労働者の日';

  @override
  String get providers_country_bolivia_holiday_providers_5 => 'アイマラ正月';

  @override
  String get providers_country_bolivia_holiday_providers_6 => '独立記念日';

  @override
  String get providers_country_bolivia_holiday_providers_7 => '万霊節';

  @override
  String get providers_country_bolivia_holiday_providers_8 => 'クリスマス';

  @override
  String get providers_country_china_holiday_providers_0 => '中国の旧正月';

  @override
  String get providers_country_china_holiday_providers_1 => '清明節（墓掃除の日）';

  @override
  String get providers_country_china_holiday_providers_2 => '国際労働者の日';

  @override
  String get providers_country_china_holiday_providers_3 => 'ドラゴンボートフェスティバル';

  @override
  String get providers_country_china_holiday_providers_4 => '中秋節';

  @override
  String get providers_country_china_holiday_providers_5 => '国慶節';

  @override
  String get providers_country_colombia_holiday_providers_0 => '元日';

  @override
  String get providers_country_colombia_holiday_providers_1 => '公現節';

  @override
  String get providers_country_colombia_holiday_providers_2 => '聖ヨセフの日';

  @override
  String get providers_country_colombia_holiday_providers_3 => '聖木曜日';

  @override
  String get providers_country_colombia_holiday_providers_4 => '聖金曜日';

  @override
  String get providers_country_colombia_holiday_providers_5 => '労働者の日';

  @override
  String get providers_country_colombia_holiday_providers_6 => 'イエス・キリストの昇天日';

  @override
  String get providers_country_colombia_holiday_providers_7 => '聖体の祝日';

  @override
  String get providers_country_colombia_holiday_providers_8 => '聖心の祝日';

  @override
  String get providers_country_colombia_holiday_providers_9 => 'コロンビア独立記念日';

  @override
  String get providers_country_colombia_holiday_providers_10 => 'ボヤカの戦い記念日';

  @override
  String get providers_country_colombia_holiday_providers_11 => '聖母被昇天祭';

  @override
  String get providers_country_colombia_holiday_providers_12 => 'コロンブスの日';

  @override
  String get providers_country_colombia_holiday_providers_13 => '万聖節';

  @override
  String get providers_country_colombia_holiday_providers_14 => '無原罪懐胎の祝日';

  @override
  String get providers_country_colombia_holiday_providers_15 => 'クリスマス';

  @override
  String get providers_country_french_guiana_holiday_providers_0 => '元日';

  @override
  String get providers_country_french_guiana_holiday_providers_1 => 'メーデー';

  @override
  String get providers_country_french_guiana_holiday_providers_2 =>
      'ヨーロッパ戦勝記念日';

  @override
  String get providers_country_french_guiana_holiday_providers_3 => '昇天祭';

  @override
  String get providers_country_french_guiana_holiday_providers_4 => '聖霊降臨祭の月曜日';

  @override
  String get providers_country_french_guiana_holiday_providers_5 => 'バスティーユ・デイ';

  @override
  String get providers_country_french_guiana_holiday_providers_6 => '聖母被昇天日';

  @override
  String get providers_country_french_guiana_holiday_providers_7 => '万聖節';

  @override
  String get providers_country_french_guiana_holiday_providers_8 => '休戦記念日';

  @override
  String get providers_country_french_guiana_holiday_providers_9 => 'クリスマス';

  @override
  String get providers_country_guyana_holiday_providers_0 => '元日';

  @override
  String get providers_country_guyana_holiday_providers_1 => '共和国記念日';

  @override
  String get providers_country_guyana_holiday_providers_2 => 'ファグワー';

  @override
  String get providers_country_guyana_holiday_providers_3 => '聖金曜日';

  @override
  String get providers_country_guyana_holiday_providers_4 => 'イースターマンデー';

  @override
  String get providers_country_guyana_holiday_providers_5 => 'メーデー';

  @override
  String get providers_country_guyana_holiday_providers_6 => '到来の日';

  @override
  String get providers_country_guyana_holiday_providers_7 => '独立記念日';

  @override
  String get providers_country_guyana_holiday_providers_8 => 'CARICOMの日';

  @override
  String get providers_country_guyana_holiday_providers_9 => '解放記念日';

  @override
  String get providers_country_guyana_holiday_providers_10 => 'ディーワーリー';

  @override
  String get providers_country_guyana_holiday_providers_11 => 'クリスマス';

  @override
  String get providers_country_guyana_holiday_providers_12 => 'ボクシングデー';

  @override
  String get providers_country_guyana_holiday_providers_13 => 'ユーマン-ナビー';

  @override
  String get providers_country_guyana_holiday_providers_14 => 'イード・アル＝アッダー';

  @override
  String get providers_country_india_holiday_providers_0 => '共和国記念日';

  @override
  String get providers_country_india_holiday_providers_1 => 'アンベドカル・ジャヤンティ';

  @override
  String get providers_country_india_holiday_providers_2 => '独立記念日';

  @override
  String get providers_country_india_holiday_providers_3 => 'ガンディー・ジャヤンティの日';

  @override
  String get providers_country_japan_holiday_providers_0 => '元日';

  @override
  String get providers_country_japan_holiday_providers_1 => '成人の日';

  @override
  String get providers_country_japan_holiday_providers_2 => '建国記念の日';

  @override
  String get providers_country_japan_holiday_providers_3 => '昭和の日';

  @override
  String get providers_country_japan_holiday_providers_4 => '憲法記念日';

  @override
  String get providers_country_japan_holiday_providers_5 => 'みどりの日';

  @override
  String get providers_country_japan_holiday_providers_6 => 'こどもの日';

  @override
  String get providers_country_japan_holiday_providers_7 => '海の日';

  @override
  String get providers_country_japan_holiday_providers_8 => '山の日';

  @override
  String get providers_country_japan_holiday_providers_9 => '敬老の日';

  @override
  String get providers_country_japan_holiday_providers_10 => '文化の日';

  @override
  String get providers_country_japan_holiday_providers_11 => '勤労感謝の日';

  @override
  String get providers_country_japan_holiday_providers_12 => '天長節';

  @override
  String get providers_country_japan_holiday_providers_13 => '天皇誕生日';

  @override
  String get providers_country_japan_holiday_providers_14 => 'スポーツ・健康の日';

  @override
  String get providers_country_japan_holiday_providers_15 => 'スポーツの日';

  @override
  String get providers_country_japan_holiday_providers_16 => '春分の日';

  @override
  String get providers_country_japan_holiday_providers_17 => '秋分の日';

  @override
  String get providers_country_paraguay_holiday_providers_0 => '元日';

  @override
  String get providers_country_paraguay_holiday_providers_1 => '英雄の日';

  @override
  String get providers_country_paraguay_holiday_providers_2 => 'メーデー';

  @override
  String get providers_country_paraguay_holiday_providers_3 => 'パラグアイ独立記念日';

  @override
  String get providers_country_paraguay_holiday_providers_4 => 'パラグアイ独立記念日';

  @override
  String get providers_country_paraguay_holiday_providers_5 => 'チャコ休戦記念日';

  @override
  String get providers_country_paraguay_holiday_providers_6 => 'アスンシオン建設記念日';

  @override
  String get providers_country_paraguay_holiday_providers_7 => 'ボケロン戦勝記念日';

  @override
  String get providers_country_paraguay_holiday_providers_8 => 'カアクペの聖母祝日';

  @override
  String get providers_country_paraguay_holiday_providers_9 => 'クリスマス';

  @override
  String get providers_country_peru_holiday_providers_0 => '元日';

  @override
  String get providers_country_peru_holiday_providers_1 => '聖木曜日';

  @override
  String get providers_country_peru_holiday_providers_2 => 'メーデー';

  @override
  String get providers_country_peru_holiday_providers_3 => '聖ペテロ・聖パウロの日';

  @override
  String get providers_country_peru_holiday_providers_4 => '独立記念日（1日目）';

  @override
  String get providers_country_peru_holiday_providers_5 => '独立記念日（2日目）';

  @override
  String get providers_country_peru_holiday_providers_6 => 'リマの聖ローザの日';

  @override
  String get providers_country_peru_holiday_providers_7 => 'アンガモスの戦い記念日';

  @override
  String get providers_country_peru_holiday_providers_8 => '万聖節';

  @override
  String get providers_country_peru_holiday_providers_9 => '無原罪の御宿り';

  @override
  String get providers_country_peru_holiday_providers_10 => 'クリスマス';

  @override
  String get providers_country_russia_holiday_providers_0 => '元日';

  @override
  String get providers_country_russia_holiday_providers_1 => '新年休日';

  @override
  String get providers_country_russia_holiday_providers_2 => '新年休日';

  @override
  String get providers_country_russia_holiday_providers_3 => '新年休日';

  @override
  String get providers_country_russia_holiday_providers_4 => '新年休日';

  @override
  String get providers_country_russia_holiday_providers_5 => '新年休日';

  @override
  String get providers_country_russia_holiday_providers_6 => '正教会のクリスマス';

  @override
  String get providers_country_russia_holiday_providers_7 => '祖国防衛者の日';

  @override
  String get providers_country_russia_holiday_providers_8 => '国際女性デー';

  @override
  String get providers_country_russia_holiday_providers_9 => '労働者の日';

  @override
  String get providers_country_russia_holiday_providers_10 => '戦勝記念日';

  @override
  String get providers_country_russia_holiday_providers_11 => 'ロシアの日';

  @override
  String get providers_country_russia_holiday_providers_12 => '統一の日';

  @override
  String get providers_country_spain_holiday_providers_0 => 'エピファニー';

  @override
  String get providers_country_spain_holiday_providers_1 => 'メーデー';

  @override
  String get providers_country_spain_holiday_providers_2 => '国慶日';

  @override
  String get providers_country_spain_holiday_providers_3 => '万聖節';

  @override
  String get providers_country_spain_holiday_providers_4 => '憲法記念日';

  @override
  String get providers_country_suriname_holiday_providers_0 => '元日';

  @override
  String get providers_country_suriname_holiday_providers_1 => '旧正月';

  @override
  String get providers_country_suriname_holiday_providers_2 =>
      'ファグワー（ホーリー・ファグワ）';

  @override
  String get providers_country_suriname_holiday_providers_3 => 'イード・アル＝フィトル';

  @override
  String get providers_country_suriname_holiday_providers_4 => 'メーデー';

  @override
  String get providers_country_suriname_holiday_providers_5 => 'イード・アル＝アドハー';

  @override
  String get providers_country_suriname_holiday_providers_6 => '解放記念日（ケティコティ）';

  @override
  String get providers_country_suriname_holiday_providers_7 => '先住民族の日';

  @override
  String get providers_country_suriname_holiday_providers_8 => 'マルーンズの日';

  @override
  String get providers_country_suriname_holiday_providers_9 => 'ディワリ';

  @override
  String get providers_country_suriname_holiday_providers_10 => '独立記念日';

  @override
  String get providers_country_suriname_holiday_providers_11 => 'クリスマス';

  @override
  String get providers_country_suriname_holiday_providers_12 => 'ボクシングデー';

  @override
  String get providers_country_uruguay_holiday_providers_0 => '元日';

  @override
  String get providers_country_uruguay_holiday_providers_1 => '子供の日';

  @override
  String get providers_country_uruguay_holiday_providers_2 => '33パトリオット上陸の日';

  @override
  String get providers_country_uruguay_holiday_providers_3 => '国際労働者の日';

  @override
  String get providers_country_uruguay_holiday_providers_4 => 'ラス・ピエドラスの戦い';

  @override
  String get providers_country_uruguay_holiday_providers_5 =>
      'ホセ・ヘルバシオ・アルティガスの誕生日と二度とないの日';

  @override
  String get providers_country_uruguay_holiday_providers_6 => '憲法記念日';

  @override
  String get providers_country_uruguay_holiday_providers_7 => '独立記念日';

  @override
  String get providers_country_uruguay_holiday_providers_8 => 'レースの日';

  @override
  String get providers_country_uruguay_holiday_providers_9 => '死者の日';

  @override
  String get providers_country_uruguay_holiday_providers_10 => 'クリスマス';

  @override
  String get providers_country_uruguay_holiday_providers_11 => 'カーニバル';

  @override
  String get providers_country_uruguay_holiday_providers_12 => 'カーニバル';

  @override
  String get providers_religion_catholic_providers_0 => '聖木曜日';

  @override
  String get providers_religion_catholic_providers_1 => '聖金曜日';

  @override
  String get providers_religion_catholic_providers_2 => '復活祭の日';

  @override
  String get providers_religion_catholic_providers_3 => '復活祭の翌日';

  @override
  String get providers_religion_catholic_providers_4 => '主の昇天祭';

  @override
  String get providers_religion_catholic_providers_5 => '聖霊降臨祭';

  @override
  String get providers_religion_catholic_providers_6 => 'コーパス・クリスティ';

  @override
  String get providers_religion_catholic_providers_7 => '万霊節';

  @override
  String get providers_religion_catholic_providers_8 => 'ノッサセニョーラアパレシーダ';

  @override
  String get providers_religion_catholic_providers_9 => 'クリスマス';

  @override
  String get providers_religion_catholic_providers_10 => 'ノッサセニョーラダビクトリア';

  @override
  String get providers_holiday_providers_0 => 'ブラジル';

  @override
  String get providers_holiday_providers_1 => 'アルゼンチン';

  @override
  String get providers_holiday_providers_2 => 'ボリビア';

  @override
  String get providers_holiday_providers_3 => 'ペルー';

  @override
  String get providers_holiday_providers_4 => 'パラグアイ';

  @override
  String get providers_holiday_providers_5 => 'コロンビア';

  @override
  String get providers_holiday_providers_6 => '仏領ギアナ';

  @override
  String get providers_holiday_providers_7 => 'スリナム';

  @override
  String get providers_holiday_providers_8 => 'ガイアナ';

  @override
  String get providers_holiday_providers_10 => 'スペイン';

  @override
  String get providers_holiday_providers_11 => 'ロシア';

  @override
  String get providers_holiday_providers_12 => '日本';

  @override
  String get providers_holiday_providers_13 => '中国';

  @override
  String get providers_holiday_providers_14 => 'インド';

  @override
  String get providers_holiday_providers_15 => 'ウルグアイ';

  @override
  String get providers_holiday_providers_16 => 'カトリック';
}
