// lib/presentation/screens/tela_menu.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/app_providers.dart';

/// Tela principal de menu, com logo e botões para navegar
/// entre Calendário, Informações Dekatrian e Informações do Desenvolvedor.
class TelaMenu extends ConsumerWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenCtrl = ref.read(screenIndexProvider.notifier);
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.25, // 25% da largura
          vertical: height * 0.10,  // 10% da altura
        ),
        child: Column(
          children: [
            // Logo no topo (40% da altura)
            SizedBox(
              height: height * 0.4,
              child: Image.asset('assets/images/icon.png'),
            ),

            const Spacer(),

            // Botão “Calendário”
            _MenuButton(
              imagePath: 'assets/images/calendar.png',
              label: 'Calendário',
              onTap: () => screenCtrl.setIndex(1),
            ),

            const SizedBox(height: 30),

            // Botão “Informação Dekatrian”
            _MenuButton(
              imagePath: 'assets/images/report.png',
              label: 'Informação Dekatrian',
              onTap: () => screenCtrl.setIndex(2),
            ),

            const SizedBox(height: 30),

            // Botão “Informação Desenvolvedor”
            _MenuButton(
              imagePath: 'assets/images/resume.png',
              label: 'Informação Desenvolvedor',
              onTap: () => screenCtrl.setIndex(3),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}

/// Widget reutilizável para os “botões” do menu (imagem + legenda).
class _MenuButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  const _MenuButton({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: width * 0.3,  // 30% da largura (seguindo o KV original)
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
