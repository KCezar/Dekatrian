// lib/presentation/screens/tela_desenvolvimento.dart
import 'package:flutter/gestures.dart'; // para TapGestureRecognizer
import '../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/app_providers.dart';

/// Tela “Informações Desenvolvimento”
class TelaDesenvolvimento extends ConsumerWidget {
  const TelaDesenvolvimento({Key? key}) : super(key: key);

  static const _padding = EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static final _linkStyle = TextStyle(
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final version = ref.watch(appVersionProvider);

    return PopScope<void>(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          ref.read(screenIndexProvider.notifier).setIndex(0);
        }
      },
      child: SafeArea(
        child: Scaffold(
          // Não precisa de AppBar pois já está no main.dart
          body: SingleChildScrollView(
            padding: _padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_0,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),

                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                          text:
                              AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_1),
                      TextSpan(
                        text: 'Kéfren Cezar',
                        style: _linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(
                              'https://x.com/KefrenCezar'),
                      ),
                      TextSpan(
                          text:
                              AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_1_1),
                      TextSpan(
                        text: 'Pindí, Artes & Sistemas',
                        style: _linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(
                              'https://www.pindi.io'),
                      ),
                      TextSpan(
                          text:
                              AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_2),
                      TextSpan(
                        text: 'kefren.cezar@pindi.io',
                        style: _linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(
                              'mailto:kefren.cezar@pindi.io'),
                      ),
                      const TextSpan(text: '.\n\n'),
                    ],
                  ),
                ),

                Text(
                  AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_3),
               Row(
                  children: [
                    Text(AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_4),
                    GestureDetector(
                      onTap: () => _launchUrl(
                          'https://github.com/lariodiniz/Dekatrian'),
                      child: Text(
                        'github.com/lariodiniz/Dekatrian',
                        style: _linkStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_5
                ),
                const SizedBox(height: 8),

                Row(
                  children: [
                    Text(AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_4),
                    GestureDetector(
                      onTap: () => _launchUrl(
                          'https://github.com/KCezar/Dekatrian'),
                      child: Text(
                        'github.com/KCezar/Dekatrian',
                        style: _linkStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Text(
                  AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_6(version),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),

                Text(AppLocalizations.of(context)!.presentation_screens_tela_desenvolvimento_7),
                const Text('• Flutter 3.13.0'),
                const Text('• Riverpod 2.0.0')
              ],
            ),
          ),
        ),
      ),
    );
  }
}