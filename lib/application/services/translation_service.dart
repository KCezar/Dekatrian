// lib/services/translation_service.dart

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

/// Serviço singleton para carregamento e acesso às traduções
class TranslationService {
  TranslationService._();
  static final TranslationService instance = TranslationService._();

  /// Mapa interno de traduções (chave → texto)
  final Map<String, String> _translations = {};

  /// Carrega o ARB correspondente ao locale informado
  Future<void> loadLocale(Locale locale) async {
    final code = locale.languageCode;
    final raw = await rootBundle.loadString('lib/l10n/app_$code.arb');
    final jsonMap = jsonDecode(raw) as Map<String, dynamic>;
    _translations.clear();
    jsonMap.forEach((key, value) {
      if (value is String && !key.startsWith('@') && key != '@@locale') {
        _translations[key] = value;
      }
    });
  }

  /// Traduz a chave; se não achar, devolve a própria chave entre ≪≫
  String tr(String key) => _translations[key] ?? '≪$key≫';
}