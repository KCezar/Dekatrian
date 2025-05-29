// lib/presentation/screens/tela_dekatrian.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../l10n/app_localizations.dart';
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
                AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_0,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),

              Text(AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_1),
              const SizedBox(height: 16),

              Text(AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_2),
              const SizedBox(height: 8),

              GestureDetector(
                onTap: () => _openLink(AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_3),
                child: Text(AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_4,
                  style: _linkStyle,
                ),
              ),
              const SizedBox(height: 16),
              
              Text(AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_5),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.amber, size: 28),
                  const SizedBox(width: 8),
                  Text(AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_6,
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
                child: Text(AppLocalizations.of(context)!.presentation_screens_tela_dekatrian_7,
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