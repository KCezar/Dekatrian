// lib/providers/translation_providers.dart

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

/// Provider que guarda o Locale atual da aplicação
final localeProvider = StateProvider<Locale>((_) => const Locale('pt'));

/// Provê um Map<String, String> com todas as chaves e mensagens do ARB correspondente ao locale
final arbMapProvider = FutureProvider<Map<String, String>>((ref) async {
  final code = ref.watch(localeProvider).languageCode;
  final raw = await rootBundle.loadString('lib/l10n/app_$code.arb');
  final jsonMap = jsonDecode(raw) as Map<String, dynamic>;
  final map = <String, String>{};
  jsonMap.forEach((key, value) {
    if (value is String && !key.startsWith('@') && key != '@@locale') {
      map[key] = value;
    }
  });
  return map;
});

/// Provider.family para obter o texto traduzido pela chave
final tProvider = Provider.family<String, String>((ref, key) {
  final arbAsync = ref.watch(arbMapProvider);
  return arbAsync.maybeWhen(
    data: (m) => m[key] ?? '≪$key≫',
    orElse: () => '…',
  );
});

/// Typedef para função de tradução
typedef Translator = String Function(String key);

/// Provider que devolve uma função de tradução direta, usando as chaves do ARB
final translatorProvider = Provider<Translator>((ref) {
  return (String key) => ref.watch(tProvider(key));
});
