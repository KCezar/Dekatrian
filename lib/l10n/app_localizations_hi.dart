// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get main_title => 'डेकात्रियन कैलेंडर';

  @override
  String get main_0 => 'होम';

  @override
  String get main_1 => 'Dekatrian';

  @override
  String get main_2 => 'डेव';

  @override
  String get main_3 => 'सेटिंग्स';

  @override
  String get main_4 => 'एक संक्षिप्त इतिहास';

  @override
  String get main_5 => 'कैलेंडर';

  @override
  String get main_6 => 'विकास';

  @override
  String get main_7 => 'डेकात्रियन कैलेंडर';

  @override
  String get domain_models_lunar_date_0 => 'छुट्टी';

  @override
  String get presentation_screens_tela_configuracoes_0 => 'सेटिंग्स';

  @override
  String get presentation_screens_tela_configuracoes_1 => 'छुट्टियाँ';

  @override
  String get presentation_screens_tela_dekatrian_0 => 'Dekatrian जानकारी';

  @override
  String get presentation_screens_tela_dekatrian_1 =>
      'Dekatrian एक कैलेंडर है जिसे Scicast पॉडकास्ट टीम के सदस्य Roberto Spinelli ने तैयार किया है।';

  @override
  String get presentation_screens_tela_dekatrian_2 =>
      'अधिक जानकारी के लिए Deviante पेज या Dekatrian कैलेंडर के Facebook समूह पर जाएँ।';

  @override
  String get presentation_screens_tela_dekatrian_3 =>
      'http://www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_4 =>
      'www.deviante.com.br/podcasts/scicast/';

  @override
  String get presentation_screens_tela_dekatrian_5 =>
      'Dekatrian कोई नई अवधारणा नहीं है; यह कैलेंडर का रूप प्राचीन काल में, जैसे मिस्र और ग्रीस में, उपयोग किया गया था। चंद्र कैलेंडर चंद्र के चक्रों के आधार पर समय मापता है और यह विश्व की कई संस्कृतियों द्वारा उपयोग किया जाता है। Moses Bruines Cotsworth द्वारा 13 महीने के Yearal कैलेंडर का हालिया प्रयास किया गया, जिसमें प्रत्येक महीने में 28 दिन होते हैं।';

  @override
  String get presentation_screens_tela_dekatrian_6 =>
      'Dekatrian को अपनाने का कारण?';

  @override
  String get presentation_screens_tela_dekatrian_7 =>
      'आज हम जो जूलियन कैलेंडर का उपयोग करते हैं उसमें कई समस्याएँ हैं: महीनों की लंबाई अनियमित है (28, 30, या 31 दिन), तिथियाँ प्रत्येक वर्ष सप्ताह के दिन बदलती हैं, और लीप वर्ष की समायोजन जटिल हैं। इसके अलावा, इसका ढांचा ऐतिहासिक राजनीतिक निर्णयों द्वारा प्रभावित हुआ है, जो किसी प्राकृतिक या तार्किक पैटर्न का अनुसरण नहीं करता। Dekatrian इन विकृतियों को समरूप मास प्रदान करके, योजना को आसान बनाकर, और प्राकृतिक चक्रों के साथ बेहतर संरेखण करके सुधारता है।';

  @override
  String get presentation_screens_tela_desenvolvimento_0 => 'विकास जानकारी';

  @override
  String get presentation_screens_tela_desenvolvimento_1 =>
      'यह ऐप विकसित किया जा रहा है ';

  @override
  String get presentation_screens_tela_desenvolvimento_1_1 =>
      '. यह एप्लिकेशन कंपनी द्वारा बनाए रखा गया है और वितरित किया जा रहा है ';

  @override
  String get presentation_screens_tela_desenvolvimento_2 =>
      '। प्रतिक्रिया, सुझाव या संपर्क के लिए ईमेल भेजें ';

  @override
  String get presentation_screens_tela_desenvolvimento_3 =>
      'यह ऐप Lario Diniz द्वारा विकसित Python Dekatrian ऐप से प्रेरित है – एक उत्कृष्ट, सुव्यवस्थित एप्लिकेशन।';

  @override
  String get presentation_screens_tela_desenvolvimento_4 => 'कोड भंडार: ';

  @override
  String get presentation_screens_tela_desenvolvimento_5 =>
      'एक दिन मैंने फोन बदला और ऐप Play Store में उपलब्ध नहीं था, इसलिए मैंने Flutter में एक संस्करण बनाने का निर्णय लिया।\n\nLario Diniz को प्रेरणा और Dekatrian स्रोत कोड के लिए धन्यवाद, जिसने मुझे Dekatrian कैलेंडर की कार्यप्रणाली समझने में मदद की।\n\nमैं Lario की तरह इस प्रोजेक्ट को MIT लाइसेंस के तहत जारी करूँगा, ताकि कोई भी Dekatrian का स्रोत कोड अध्ययन या अपना संस्करण बना सके।';

  @override
  String presentation_screens_tela_desenvolvimento_6(String version) {
    return 'ऐप संस्करण: $version';
  }

  @override
  String get presentation_screens_tela_desenvolvimento_7 =>
      'विकास में उपयोग की गई तकनीकें:';

  @override
  String presentation_screens_tela_feriados_0(String error) {
    return 'लोड त्रुटि: $error';
  }

  @override
  String get presentation_screens_tela_feriados_1 => 'छुट्टियाँ';

  @override
  String get presentation_screens_tela_feriados_2 => 'कार्य खोजें…';

  @override
  String get presentation_screens_tela_feriados_3 =>
      'कोई पसंद सुरक्षित नहीं है';

  @override
  String get presentation_screens_tela_feriados_4 => 'नया';

  @override
  String get presentation_screens_tela_inicial_0 => 'दिन';

  @override
  String get presentation_screens_tela_inicial_1 => 'महीना';

  @override
  String get presentation_screens_tela_inicial_2 => 'वर्ष';

  @override
  String get presentation_screens_tela_novo_feriado_0 => 'नई छुट्टी';

  @override
  String get presentation_screens_tela_novo_feriado_1 => 'खोजें';

  @override
  String get presentation_screens_tela_novo_feriado_2 => 'देश';

  @override
  String get presentation_screens_tela_novo_feriado_3 => 'क्षेत्र';

  @override
  String get presentation_screens_tela_novo_feriado_4 => 'धर्म';

  @override
  String get presentation_screens_tela_novo_feriado_5 =>
      'पसंद सफलतापूर्वक सहेजी गई!';

  @override
  String get presentation_screens_tela_novo_feriado_6 => 'सहेजें';

  @override
  String get presentation_screens_tela_novo_feriado_7 => 'कोई नहीं';

  @override
  String get presentation_widgets_dia_calendario_0 => 'शनिवार - सप्ताहांत';

  @override
  String get presentation_widgets_dia_calendario_1 => 'रविवार - सप्ताहांत';

  @override
  String presentation_widgets_dia_calendario_2(String n) {
    return '(छुट्टी): $n';
  }

  @override
  String get presentation_widgets_dia_calendario_3 => 'सप्ताहांत';

  @override
  String get presentation_widgets_dia_calendario_4 => 'छुट्टी';

  @override
  String get providers_country_brazil_holiday_providers_0 => 'नववर्ष दिवस';

  @override
  String get providers_country_brazil_holiday_providers_1 => 'तिरादेंटेस दिवस';

  @override
  String get providers_country_brazil_holiday_providers_2 => 'श्रमिक दिवस';

  @override
  String get providers_country_brazil_holiday_providers_3 =>
      '1932 संवैधानिक क्रांति दिवस';

  @override
  String get providers_country_brazil_holiday_providers_4 => 'स्वतंत्रता दिवस';

  @override
  String get providers_country_brazil_holiday_providers_5 =>
      'गणतंत्र स्थापना दिवस';

  @override
  String get providers_country_brazil_holiday_providers_6 => 'कार्निवल';

  @override
  String get providers_country_brazil_holiday_providers_7 => 'कार्निवल';

  @override
  String get providers_country_brazil_holiday_providers_8 =>
      'एस्पिरिटो सैंटो राज्य की वर्षगांठ';

  @override
  String get providers_country_brazil_holiday_providers_9 => 'काली चेतना दिवस';

  @override
  String get providers_country_argentina_holiday_providers_0 => 'नए साल का दिन';

  @override
  String get providers_country_argentina_holiday_providers_1 => 'कार्निवल';

  @override
  String get providers_country_argentina_holiday_providers_2 => 'कार्निवल';

  @override
  String get providers_country_argentina_holiday_providers_3 =>
      'सत्य और न्याय की याद का दिन';

  @override
  String get providers_country_argentina_holiday_providers_4 =>
      'मैलबिनास युद्ध के पूर्व सैनिकों और शहीदों का दिन';

  @override
  String get providers_country_argentina_holiday_providers_5 => 'श्रम दिवस';

  @override
  String get providers_country_argentina_holiday_providers_6 => 'मई क्रांति';

  @override
  String get providers_country_argentina_holiday_providers_7 =>
      'जनरल मार्टिन मिगुएल दे गोएम्स की पुण्यतिथि';

  @override
  String get providers_country_argentina_holiday_providers_8 =>
      'जनरल मैनुएल बेलग्रानो स्मरण दिवस';

  @override
  String get providers_country_argentina_holiday_providers_9 =>
      'स्वतंत्रता दिवस';

  @override
  String get providers_country_argentina_holiday_providers_10 =>
      'जनरल जोस दे सैन मार्टिन स्मरण दिवस';

  @override
  String get providers_country_argentina_holiday_providers_11 =>
      'सांस्कृतिक विविधता के लिए सम्मान दिवस';

  @override
  String get providers_country_argentina_holiday_providers_12 =>
      'राष्ट्रीय संप्रभुता दिवस';

  @override
  String get providers_country_argentina_holiday_providers_13 =>
      'निर्दोष गर्भधारण दिवस';

  @override
  String get providers_country_argentina_holiday_providers_14 => 'क्रिसमस दिवस';

  @override
  String get providers_country_bolivia_holiday_providers_0 => 'नव वर्ष का दिन';

  @override
  String get providers_country_bolivia_holiday_providers_1 =>
      'बहुराष्ट्रीय राज्य स्थापना दिवस';

  @override
  String get providers_country_bolivia_holiday_providers_2 => 'कार्निवल सोमवार';

  @override
  String get providers_country_bolivia_holiday_providers_3 =>
      'कार्निवल मंगलवार';

  @override
  String get providers_country_bolivia_holiday_providers_4 => 'मजदूर दिवस';

  @override
  String get providers_country_bolivia_holiday_providers_5 => 'अयमारा नव वर्ष';

  @override
  String get providers_country_bolivia_holiday_providers_6 => 'स्वतंत्रता दिवस';

  @override
  String get providers_country_bolivia_holiday_providers_7 =>
      'सर्व आत्माओं का दिन';

  @override
  String get providers_country_bolivia_holiday_providers_8 => 'क्रिसमस दिवस';

  @override
  String get providers_country_china_holiday_providers_0 => 'चीनी नव वर्ष';

  @override
  String get providers_country_china_holiday_providers_1 =>
      'छिंगमिंग महोत्सव (कब्र-सफ़ाई दिवस)';

  @override
  String get providers_country_china_holiday_providers_2 =>
      'अंतर्राष्ट्रीय श्रमिक दिवस';

  @override
  String get providers_country_china_holiday_providers_3 =>
      'ड्रैगन बोट महोत्सव';

  @override
  String get providers_country_china_holiday_providers_4 => 'मध्य-शरद उत्सव';

  @override
  String get providers_country_china_holiday_providers_5 => 'राष्ट्रीय दिवस';

  @override
  String get providers_country_colombia_holiday_providers_0 =>
      'नया वर्ष का दिन';

  @override
  String get providers_country_colombia_holiday_providers_1 => 'एपिफ़ेनी';

  @override
  String get providers_country_colombia_holiday_providers_2 =>
      'सेंट जोसेफ दिवस';

  @override
  String get providers_country_colombia_holiday_providers_3 => 'महान गुरुवार';

  @override
  String get providers_country_colombia_holiday_providers_4 => 'गुड फ्राइडे';

  @override
  String get providers_country_colombia_holiday_providers_5 => 'श्रम दिवस';

  @override
  String get providers_country_colombia_holiday_providers_6 =>
      'यीशु मसीह के उत्तरारोहण दिवस';

  @override
  String get providers_country_colombia_holiday_providers_7 =>
      'कॉर्पस क्रिस्टी';

  @override
  String get providers_country_colombia_holiday_providers_8 =>
      'पवित्र ह्रदय महोत्सव';

  @override
  String get providers_country_colombia_holiday_providers_9 =>
      'कोलम्बिया की स्वतंत्रता दिवस';

  @override
  String get providers_country_colombia_holiday_providers_10 =>
      'बॉयाका की लड़ाई दिवस';

  @override
  String get providers_country_colombia_holiday_providers_11 =>
      'मरियम की अस्थापन दिवस';

  @override
  String get providers_country_colombia_holiday_providers_12 => 'कोलंबस दिवस';

  @override
  String get providers_country_colombia_holiday_providers_13 =>
      'सभी संतों का दिन';

  @override
  String get providers_country_colombia_holiday_providers_14 =>
      'निर्दोष गर्भधारण दिवस';

  @override
  String get providers_country_colombia_holiday_providers_15 => 'क्रिसमस';

  @override
  String get providers_country_french_guiana_holiday_providers_0 =>
      'नववर्ष दिवस';

  @override
  String get providers_country_french_guiana_holiday_providers_1 => 'श्रम दिवस';

  @override
  String get providers_country_french_guiana_holiday_providers_2 =>
      'यूरोप में विजय दिवस';

  @override
  String get providers_country_french_guiana_holiday_providers_3 =>
      'स्वर्गारोहण दिवस';

  @override
  String get providers_country_french_guiana_holiday_providers_4 =>
      'पवित्र आत्मा सोमवार';

  @override
  String get providers_country_french_guiana_holiday_providers_5 =>
      'बैस्टिल दिवस';

  @override
  String get providers_country_french_guiana_holiday_providers_6 =>
      'मरियम की अस्थापन';

  @override
  String get providers_country_french_guiana_holiday_providers_7 =>
      'सभी संतों का दिन';

  @override
  String get providers_country_french_guiana_holiday_providers_8 =>
      'आर्मिस्टिस दिवस';

  @override
  String get providers_country_french_guiana_holiday_providers_9 =>
      'क्रिसमस दिवस';

  @override
  String get providers_country_guyana_holiday_providers_0 => 'नया वर्ष दिवस';

  @override
  String get providers_country_guyana_holiday_providers_1 => 'गणतंत्र दिवस';

  @override
  String get providers_country_guyana_holiday_providers_2 => 'फग्वाह';

  @override
  String get providers_country_guyana_holiday_providers_3 => 'गुड फ्राइडे';

  @override
  String get providers_country_guyana_holiday_providers_4 => 'ईस्टर सोमवार';

  @override
  String get providers_country_guyana_holiday_providers_5 => 'श्रम दिवस';

  @override
  String get providers_country_guyana_holiday_providers_6 => 'आगमन दिवस';

  @override
  String get providers_country_guyana_holiday_providers_7 => 'स्वतंत्रता दिवस';

  @override
  String get providers_country_guyana_holiday_providers_8 => 'कैरिकॉम दिवस';

  @override
  String get providers_country_guyana_holiday_providers_9 => 'उद्धार दिवस';

  @override
  String get providers_country_guyana_holiday_providers_10 => 'दीपावली';

  @override
  String get providers_country_guyana_holiday_providers_11 => 'क्रिसमस दिवस';

  @override
  String get providers_country_guyana_holiday_providers_12 => 'बॉक्सिंग डे';

  @override
  String get providers_country_guyana_holiday_providers_13 => 'यूमन-नबी';

  @override
  String get providers_country_guyana_holiday_providers_14 => 'ईद-उल-आधा';

  @override
  String get providers_country_india_holiday_providers_0 => 'गणतंत्र दिवस';

  @override
  String get providers_country_india_holiday_providers_1 => 'अम्बेडकर जयंती';

  @override
  String get providers_country_india_holiday_providers_2 => 'स्वतंत्रता दिवस';

  @override
  String get providers_country_india_holiday_providers_3 => 'गांधी जयंती';

  @override
  String get providers_country_japan_holiday_providers_0 => 'नव वर्ष दिवस';

  @override
  String get providers_country_japan_holiday_providers_1 => 'लय पूर्णता दिवस';

  @override
  String get providers_country_japan_holiday_providers_2 => 'स्थापना दिवस';

  @override
  String get providers_country_japan_holiday_providers_3 => 'शोवा दिवस';

  @override
  String get providers_country_japan_holiday_providers_4 =>
      'संविधान स्मारक दिवस';

  @override
  String get providers_country_japan_holiday_providers_5 => 'हरियाली दिवस';

  @override
  String get providers_country_japan_holiday_providers_6 => 'बाल दिवस';

  @override
  String get providers_country_japan_holiday_providers_7 => 'समुद्र दिवस';

  @override
  String get providers_country_japan_holiday_providers_8 => 'पर्वत दिवस';

  @override
  String get providers_country_japan_holiday_providers_9 =>
      'बुजुर्ग सम्मान दिवस';

  @override
  String get providers_country_japan_holiday_providers_10 => 'संस्कृति दिवस';

  @override
  String get providers_country_japan_holiday_providers_11 =>
      'श्रम धन्यवाद दिवस';

  @override
  String get providers_country_japan_holiday_providers_12 =>
      'सम्राट का जन्मदिन टेनचोबुशी';

  @override
  String get providers_country_japan_holiday_providers_13 =>
      'सम्राट का जन्मदिन';

  @override
  String get providers_country_japan_holiday_providers_14 =>
      'स्वास्थ्य और खेल दिवस';

  @override
  String get providers_country_japan_holiday_providers_15 => 'खेल दिवस';

  @override
  String get providers_country_japan_holiday_providers_16 => 'वर्नल विषुव दिवस';

  @override
  String get providers_country_japan_holiday_providers_17 => 'शरद विषुव दिवस';

  @override
  String get providers_country_paraguay_holiday_providers_0 => 'नव वर्ष दिवस';

  @override
  String get providers_country_paraguay_holiday_providers_1 => 'हीरोज़ डे';

  @override
  String get providers_country_paraguay_holiday_providers_2 => 'श्रमिक दिवस';

  @override
  String get providers_country_paraguay_holiday_providers_3 =>
      'पैराग्वे की स्वतंत्रता';

  @override
  String get providers_country_paraguay_holiday_providers_4 =>
      'पैराग्वे की स्वतंत्रता';

  @override
  String get providers_country_paraguay_holiday_providers_5 =>
      'चाको सन्धि दिवस';

  @override
  String get providers_country_paraguay_holiday_providers_6 =>
      'असन्सियो की स्थापना';

  @override
  String get providers_country_paraguay_holiday_providers_7 =>
      'बोकेरॉन लड़ाई विजय दिवस';

  @override
  String get providers_country_paraguay_holiday_providers_8 =>
      'काकुपे की वर्जिन';

  @override
  String get providers_country_paraguay_holiday_providers_9 => 'क्रिसमस डे';

  @override
  String get providers_country_peru_holiday_providers_0 => 'नववर्ष दिवस';

  @override
  String get providers_country_peru_holiday_providers_1 => 'पवित्र गुरुवार';

  @override
  String get providers_country_peru_holiday_providers_2 =>
      'अंतर्राष्ट्रीय श्रमिक दिवस';

  @override
  String get providers_country_peru_holiday_providers_3 =>
      'सेंट पीटर और सेंट पॉल';

  @override
  String get providers_country_peru_holiday_providers_4 => 'स्वतंत्रता दिवस';

  @override
  String get providers_country_peru_holiday_providers_5 => 'स्वतंत्रता दिवस';

  @override
  String get providers_country_peru_holiday_providers_6 => 'सांता रोजा डी लिमा';

  @override
  String get providers_country_peru_holiday_providers_7 => 'एंगामोस की लड़ाई';

  @override
  String get providers_country_peru_holiday_providers_8 => 'सब संतों का दिन';

  @override
  String get providers_country_peru_holiday_providers_9 => 'निर्दोष गर्भधारण';

  @override
  String get providers_country_peru_holiday_providers_10 => 'क्रिसमस दिवस';

  @override
  String get providers_country_russia_holiday_providers_0 => 'नववर्ष दिवस';

  @override
  String get providers_country_russia_holiday_providers_1 => 'नया साल अवकाश';

  @override
  String get providers_country_russia_holiday_providers_2 => 'नया साल अवकाश';

  @override
  String get providers_country_russia_holiday_providers_3 => 'नया साल अवकाश';

  @override
  String get providers_country_russia_holiday_providers_4 => 'नया साल अवकाश';

  @override
  String get providers_country_russia_holiday_providers_5 => 'नया साल अवकाश';

  @override
  String get providers_country_russia_holiday_providers_6 =>
      'ऑर्थोडॉक्स क्रिसमस दिवस';

  @override
  String get providers_country_russia_holiday_providers_7 =>
      'पितृभूमि दिवस के रक्षक';

  @override
  String get providers_country_russia_holiday_providers_8 =>
      'अंतर्राष्ट्रीय महिला दिवस';

  @override
  String get providers_country_russia_holiday_providers_9 => 'श्रम दिवस';

  @override
  String get providers_country_russia_holiday_providers_10 => 'विजय दिवस';

  @override
  String get providers_country_russia_holiday_providers_11 => 'रूस दिवस';

  @override
  String get providers_country_russia_holiday_providers_12 => 'एकता दिवस';

  @override
  String get providers_country_spain_holiday_providers_0 => 'प्रकाशोत्सव';

  @override
  String get providers_country_spain_holiday_providers_1 => 'श्रमिक दिवस';

  @override
  String get providers_country_spain_holiday_providers_2 => 'राष्ट्रीय दिवस';

  @override
  String get providers_country_spain_holiday_providers_3 => 'सभी संतों का दिन';

  @override
  String get providers_country_spain_holiday_providers_4 => 'संविधान दिवस';

  @override
  String get providers_country_suriname_holiday_providers_0 => 'नववर्ष दिवस';

  @override
  String get providers_country_suriname_holiday_providers_1 => 'चीनी नववर्ष';

  @override
  String get providers_country_suriname_holiday_providers_2 =>
      'फगवाह (होली फगवा)';

  @override
  String get providers_country_suriname_holiday_providers_3 => 'ईद उल-फ़ित्र';

  @override
  String get providers_country_suriname_holiday_providers_4 => 'श्रमिक दिवस';

  @override
  String get providers_country_suriname_holiday_providers_5 => 'ईद उल-अधा';

  @override
  String get providers_country_suriname_holiday_providers_6 =>
      'उद्धार दिवस (केटिकोटी)';

  @override
  String get providers_country_suriname_holiday_providers_7 => 'आदिवासी दिवस';

  @override
  String get providers_country_suriname_holiday_providers_8 => 'मैरोन्स का दिन';

  @override
  String get providers_country_suriname_holiday_providers_9 => 'दिवाळी';

  @override
  String get providers_country_suriname_holiday_providers_10 =>
      'स्वतंत्रता दिवस';

  @override
  String get providers_country_suriname_holiday_providers_11 => 'क्रिसमस दिवस';

  @override
  String get providers_country_suriname_holiday_providers_12 => 'बॉक्सिंग डे';

  @override
  String get providers_country_uruguay_holiday_providers_0 => 'नववर्ष दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_1 => 'बाल दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_2 =>
      '33 देशभक्तों के उतराई दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_3 =>
      'अंतर्राष्ट्रीय श्रमिक दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_4 =>
      'लास पिएद्रास की लड़ाई';

  @override
  String get providers_country_uruguay_holiday_providers_5 =>
      'जोस गेरवासियो आरटिगस का जन्मदिन और \'कभी नहीं\' दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_6 => 'संविधान दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_7 => 'स्वतंत्रता दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_8 => 'द रेस दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_9 => 'मृतकों का दिन';

  @override
  String get providers_country_uruguay_holiday_providers_10 => 'क्रिसमस दिवस';

  @override
  String get providers_country_uruguay_holiday_providers_11 => 'कार्निवल';

  @override
  String get providers_country_uruguay_holiday_providers_12 => 'कार्निवल';

  @override
  String get providers_country_united_states_holiday_providers_0 =>
      'नववर्ष दिवस';

  @override
  String get providers_country_united_states_holiday_providers_1 =>
      'मार्टिन लूथर किंग जूनियर दिवस';

  @override
  String get providers_country_united_states_holiday_providers_2 =>
      'राष्ट्रपतियों का दिवस';

  @override
  String get providers_country_united_states_holiday_providers_3 =>
      'स्मृति दिवस';

  @override
  String get providers_country_united_states_holiday_providers_4 =>
      'जून्टीन्थ राष्ट्रीय स्वाधीनता दिवस';

  @override
  String get providers_country_united_states_holiday_providers_5 =>
      'स्वाधीनता दिवस';

  @override
  String get providers_country_united_states_holiday_providers_6 => 'श्रम दिवस';

  @override
  String get providers_country_united_states_holiday_providers_7 =>
      'कोलम्बस दिवस';

  @override
  String get providers_country_united_states_holiday_providers_8 =>
      'पूर्व सैनिक दिवस';

  @override
  String get providers_country_united_states_holiday_providers_9 =>
      'थैंक्सगिविंग डे';

  @override
  String get providers_country_united_states_holiday_providers_10 =>
      'क्रिसमस दिवस';

  @override
  String get providers_country_united_states_holiday_providers_11 =>
      'ट्रूमन दिवस';

  @override
  String get providers_country_united_states_holiday_providers_12 =>
      'आदिवासी दिवस';

  @override
  String get providers_country_united_states_holiday_providers_13 =>
      'लिंकेन की जयंती';

  @override
  String get providers_religion_catholic_providers_0 => 'सभी संतों का दिन';

  @override
  String get providers_religion_catholic_providers_1 => 'सभी आत्माओं का दिन';

  @override
  String get providers_religion_catholic_providers_2 => 'उदयादिन';

  @override
  String get providers_religion_catholic_providers_3 => 'स्वर्गारोहण दिवस';

  @override
  String get providers_religion_catholic_providers_4 => 'क्रिसमस दिवस';

  @override
  String get providers_religion_catholic_providers_5 => 'कॉर्पस क्रिस्टी';

  @override
  String get providers_religion_catholic_providers_6 => 'ईस्टर सोमवार';

  @override
  String get providers_religion_catholic_providers_7 => 'ईस्टर रविवार';

  @override
  String get providers_religion_catholic_providers_8 => 'प्रकाशोत्सव';

  @override
  String get providers_religion_catholic_providers_9 => 'गुड फ्राइडे';

  @override
  String get providers_religion_catholic_providers_10 =>
      'निर्दोष गर्भधारण दिवस';

  @override
  String get providers_religion_catholic_providers_11 => 'मौंडी गुरुवार';

  @override
  String get providers_religion_catholic_providers_12 =>
      'एपरेसिडा की मातृ देवी';

  @override
  String get providers_religion_catholic_providers_13 =>
      'विटोरिया की मातृ देवी';

  @override
  String get providers_religion_catholic_providers_14 => 'पेंटेकोस्ट';

  @override
  String get providers_religion_catholic_providers_15 => 'पवित्र हृदय';

  @override
  String get providers_religion_catholic_providers_16 => 'संत जोसेफ का दिन';

  @override
  String get providers_religion_catholic_providers_17 =>
      'संत पेत्रुस और संत पौलुस';

  @override
  String get providers_religion_catholic_providers_18 => 'सांता रोजा डी लीमा';

  @override
  String get providers_religion_catholic_providers_19 => 'काकूपे की कन्या';

  @override
  String get providers_holiday_providers_0 => 'ब्राज़ील';

  @override
  String get providers_holiday_providers_1 => 'अर्जेंटीना';

  @override
  String get providers_holiday_providers_2 => 'बोलीविया';

  @override
  String get providers_holiday_providers_3 => 'पेरू';

  @override
  String get providers_holiday_providers_4 => 'पराग्वे';

  @override
  String get providers_holiday_providers_5 => 'कोलम्बिया';

  @override
  String get providers_holiday_providers_6 => 'फ्रेंच गुयाना';

  @override
  String get providers_holiday_providers_7 => 'सूरीनाम';

  @override
  String get providers_holiday_providers_8 => 'गयाना';

  @override
  String get providers_holiday_providers_10 => 'स्पेन';

  @override
  String get providers_holiday_providers_11 => 'रूस';

  @override
  String get providers_holiday_providers_12 => 'जापान';

  @override
  String get providers_holiday_providers_13 => 'चीन';

  @override
  String get providers_holiday_providers_14 => 'भारत';

  @override
  String get providers_holiday_providers_15 => 'उरुग्वे';

  @override
  String get providers_holiday_providers_16 => 'कैथोलिक';

  @override
  String get providers_holiday_providers_17 => 'संयुक्त राज्य अमेरिका';
}
