// lib/presentation/screens/tela_dekatrian.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/app_providers.dart';

class TelaDekatrian extends ConsumerWidget {
  const TelaDekatrian({Key? key}) : super(key: key);

  static const _padding = EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static final _linkStyle = TextStyle(
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  Future<void> _openLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope<void>(
      // impede o pop automático; sempre cai no callback abaixo
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          // em vez de sair, volta para o índice 0 (Menu)
          ref.read(screenIndexProvider.notifier).setIndex(0);
        }
      },
      child: SafeArea(
        child: SingleChildScrollView(
          padding: _padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Informações Dekatrian',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),

              const Text(
                'Dekatrian é um calendário idealizado pelo integrante '
                'da equipe do podcast Scicast:\n\n'
                'Roberto Spinelli.',
              ),
              const SizedBox(height: 16),

              const Text(
                'Visite a página da Deviante ou o grupo do Facebook '
                'do Calendário Dekatrian para saber mais.',
              ),
              const SizedBox(height: 8),

              GestureDetector(
                onTap: () => _openLink(
                  'http://www.deviante.com.br/podcasts/scicast/',
                ),
                child: Text(
                  'www.deviante.com.br/podcasts/scicast/',
                  style: _linkStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}