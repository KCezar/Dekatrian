import 'package:flutter/material.dart';

/// Exibe um cabeçalho colorido com o título alinhado à direita
class AreaTitulo extends StatelessWidget {
  final String titulo;
  const AreaTitulo({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      width: double.infinity,
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          titulo,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
