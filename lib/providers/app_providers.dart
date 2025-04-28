// lib/providers/app_providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Notifier para gerenciar a data selecionada
class SelectedDateNotifier extends StateNotifier<DateTime> {
  SelectedDateNotifier() : super(DateTime.now());

  void select(DateTime date) => state = date;
}

/// Provider baseado em StateNotifier (melhor para lógica um pouco mais complexa)
final selectedDateProvider =
    StateNotifierProvider<SelectedDateNotifier, DateTime>(
  (_) => SelectedDateNotifier(),
);

/// Notifier para controlar qual tela está ativa (usa-se na navegação por índice)
class ScreenIndexNotifier extends StateNotifier<int> {
  ScreenIndexNotifier() : super(1);

  void setIndex(int idx) => state = idx;
}

final screenIndexProvider =
    StateNotifierProvider<ScreenIndexNotifier, int>(
  (_) => ScreenIndexNotifier(),
);

/// Versão da aplicação (pode vir do pubspec ou PackageInfo)
final appVersionProvider = Provider<String>((_) => '1.1.0');