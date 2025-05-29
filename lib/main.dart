import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'dart:ui' show PlatformDispatcher;

import 'presentation/screens/tela_inicial.dart';
import 'presentation/screens/tela_dekatrian.dart';
import 'presentation/screens/tela_desenvolvimento.dart';
import 'presentation/screens/tela_configuracoes.dart';
import 'presentation/screens/tela_feriados.dart';
import 'presentation/screens/tela_novo_feriado.dart';
import 'providers/app_providers.dart';
import 'package:dekatrian/application/services/translation_service.dart';

final deviceLocale = PlatformDispatcher.instance.locale;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TranslationService.instance.loadLocale(deviceLocale);
  runApp(
    const ProviderScope(  // habilita Riverpod
      child: DekatrianApp(),
    ),
  );
}

class DekatrianApp extends ConsumerWidget {
  const DekatrianApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Observa o índice da tela atual
    final currentIndex = ref.watch(screenIndexProvider);

    // lista de telas
    final screens = <Widget>[
      const TelaDekatrian(),
      const TelaInicial(),      
      const TelaDesenvolvimento(),
      const TelaConfiguracoes(),
      const TelaNovoFeriado(),
    ];

    return MaterialApp(
      locale: deviceLocale,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale != null) {
          // recarrega o ARB do TranslationService quando o usuário muda de idioma
          TranslationService.instance.loadLocale(locale);
        }
        return locale;
      },
      title: TranslationService.instance.tr("main_title"),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('pt'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {                                       // ← rota adicionada
        '/feriados': (_) => const TelaFeriados(),
        '/novo_feriado': (_) => const TelaNovoFeriado(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text(_titleForIndex(currentIndex,context)),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,               // mantém todos visíveis
          backgroundColor: Theme.of(context).primaryColor,   // fundo escuro
          selectedItemColor: Colors.white,                   // ícone e label selecionados em branco
          unselectedItemColor: Colors.white70,               // ícones “off” em branco translúcido
          onTap: (idx) => ref.read(screenIndexProvider.notifier).state = idx,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: TranslationService.instance.tr("main_0"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: TranslationService.instance.tr("main_1"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_mode),
              label: TranslationService.instance.tr("main_2"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: TranslationService.instance.tr("main_3"),
            )
          ],
        ),
      ),
    );
  }

  String _titleForIndex(int idx,context) {
    switch (idx) {
      case 0:
        return TranslationService.instance.tr("main_4");
      case 1:
        return TranslationService.instance.tr("main_5");
      case 2:
        return TranslationService.instance.tr("main_6");
      default:
        return TranslationService.instance.tr("main_7");
    }
  }
}