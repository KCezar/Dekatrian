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
              const SizedBox(height: 16),
              
              const Text(
                'Dekatrian não é uma ideia nova, esta forma de calendário '
                'já foi utilizada nos tempos antigos, como no Egito e na Grécia. '
                'O calendário lunar é uma forma de medir o tempo que se baseia '
                'nas fases da lua, e é utilizado por muitas culturas ao redor do mundo.'
                ' Uma outra tentativa mais recente de criar um calendário lunar foi feita '
                'por Moses Bruines Cotsworth, que criou o calendário de 13 meses, o Yearal, cada um com 28 dias.'
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.amber, size: 28),
                  const SizedBox(width: 8),
                  Text(
                    'Por que adotar o Dekatrian?',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.amber, width: 1),
                ),
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'O calendário gregoriano, usado atualmente, apresenta vários problemas: '
                  'os meses têm durações irregulares (28, 30 ou 31 dias), '
                  'as datas mudam de dia da semana a cada ano, '
                  'e as correções como os anos bissextos são complexas. '
                  'Além disso, sua estrutura foi influenciada por decisões políticas históricas, '
                  'não seguindo um padrão natural ou lógico. '
                  'O calendário Dekatrian busca corrigir essas distorções, oferecendo meses iguais, '
                  'facilidade no planejamento e maior harmonia com ciclos naturais.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}