// lib/presentation/screens/tela_desenvolvimento.dart
import 'package:flutter/gestures.dart'; // para TapGestureRecognizer

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
                  'Informações Desenvolvimento',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),

                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      const TextSpan(
                          text:
                              'Este programa está sendo desenvolvido por '),
                      TextSpan(
                        text: 'Kéfren Cezar',
                        style: _linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(
                              'https://x.com/KefrenCezar'),
                      ),
                      const TextSpan(
                          text:
                              '. Para críticas, sugestões e contatos envie um email para '),
                      TextSpan(
                        text: 'kefren.cezar.c@gmail.com',
                        style: _linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(
                              'mailto:kefren.cezar.c@gmail.com'),
                      ),
                      const TextSpan(text: '.\n\n'),
                    ],
                  ),
                ),

                const Text(
                  "Este programa foi inspirado no app Dekatrian, desenvolvido por Lario Diniz em python " + 
                  'https://github.com/lariodiniz/Dekatrian' + " excelente aplicação, muito bem escrita.\n\n" + 
                  "Um belo dia troquei de celular e o mesmo aplicativo não estava mais disponível na loja, então resolvi fazer uma versão em Flutter.\n\n" +
                  "Agradeço ao Lario Diniz pela inspiração e pelo código fonte do Dekatrian, que me ajudou a entender como funciona o calendário Dekatrian.\n\n" +
                  " Deixarei o projeto na licença MIT também, para quem quiser usar o código fonte do Dekatrian.\n\n"
                ),
                const SizedBox(height: 8),

                Row(
                  children: [
                    const Text('Repositório: '),
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
                  'Versão da Aplicação: $version',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),

                const Text('Tecnologias utilizadas no desenvolvimento:'),
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