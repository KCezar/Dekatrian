import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/screens/tela_menu.dart';
import 'presentation/screens/tela_inicial.dart';
import 'presentation/screens/tela_dekatrian.dart';
import 'presentation/screens/tela_desenvolvimento.dart';

void main() {
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
    ];

    return MaterialApp(
      title: 'Calendário Dekatrian v1.1.0',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_titleForIndex(currentIndex)),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,               // mantém todos visíveis
          backgroundColor: Theme.of(context).primaryColor,   // fundo escuro
          selectedItemColor: Colors.white,                   // ícone e label selecionados em branco
          unselectedItemColor: Colors.white70,               // ícones “off” em branco translúcido
          onTap: (idx) => ref.read(screenIndexProvider.notifier).state = idx,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicial',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Dekatrian',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_mode),
              label: 'Dev',
            ),
          ],
        ),
      ),
    );
  }

  String _titleForIndex(int idx) {
    switch (idx) {
      case 0:
        return 'Uma Breve História';
      case 1:
        return 'Calendário';
      case 2:
        return 'Desenvolvimento';
      default:
        return 'Calendário Dekatrian';
    }
  }
}

// --- Providers de estado ---

/// data “hoje”
final currentDateProvider = StateProvider<DateTime>(
  (ref) => DateTime.now(),
);

/// data que o usuário selecionou
final selectedDateProvider = StateProvider<DateTime>(
  (ref) => DateTime.now(),
);

/// índice da tela atual (0..3)
final screenIndexProvider = StateProvider<int>(
  (ref) => 1, // inicia em “Tela Inicial”
);