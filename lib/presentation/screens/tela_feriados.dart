import 'package:dekatrian/domain/models/holiday_preference.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dekatrian/data/local/database.dart';
import 'package:dekatrian/providers/database_providers.dart';
import 'package:dekatrian/providers/holiday_providers.dart';
import 'package:dekatrian/presentation/screens/tela_novo_feriado.dart';

/// Provider que busca todas as preferências salvas
final holidayPreferencesProvider =
    FutureProvider.autoDispose<List<HolidayPreferencesData>>((ref) async {
  final db = ref.read(databaseProvider);
  return db.getAllHolidayPreferences();
});

class TelaFeriados extends ConsumerWidget {
  const TelaFeriados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prefsAsync = ref.watch(holidayPreferencesProvider);
    return prefsAsync.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        body: Center(child: Text('Erro ao carregar: \$e')),
      ),
      data: (prefs) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Feriados'),
            backgroundColor: const Color(0xFF6200EA),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search tasks...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (v) {
                    // implementar filtro se quiser
                  },
                ),
              ),
            ),
          ),
          body: prefs.isEmpty
              ? const Center(child: Text('Nenhuma preferência salva'))
              : ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: prefs.length,
                  itemBuilder: (context, i) {
                    final p = prefs[i];
                    final parts = <String>[];
                    parts.addAll(p.countries.split(','));
                    if (p.regions.isNotEmpty) parts.addAll(p.regions.split(','));
                    if (p.religion != null && p.religion!.isNotEmpty)
                      parts.add(p.religion!);

                    return Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border(
                          left: BorderSide(
                            color: i.isEven
                                ? const Color(0xFF6200EA)
                                : Colors.orange,
                            width: 4,
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          parts.join(' / '),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Consumer(
                          builder: (ctx, ref, _) {
                            final toggleAsync = ref.watch(
                                preferenceToggleProvider(p.id));
                            return toggleAsync.when(
                              data: (enabled) {
                                return Switch(
                                  value: enabled,
                                  activeColor: const Color(0xFF6200EA),
                                  onChanged: (v) async {
                                    final db = ref.read(databaseProvider);
                                    final toggles = await db.getTogglesByPreference(p.id);
                                    for (var t in toggles) {
                                      final comp = FeriadoToggleCompanion(
                                        feriadoId: Value(t.feriadoId),
                                        preferenceId: Value(t.preferenceId),
                                        isEnabled: Value(v),
                                      );
                                      await db.upsertFeriadoToggle(comp);
                                    }
                                    ref.refresh(preferenceToggleProvider(p.id));
                                    ref.refresh(enabledHolidayDatesProvider);
                                  },
                                );
                              },
                              loading: () => const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator()),
                              error: (e, _) => const Icon(Icons.error),
                            );
                          },
                        ),
                        onTap: () async {
                          final updated = await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => TelaNovoFeriado(
                                preference: HolidayPreference.fromData(
                                  p.id,
                                  p.countries,
                                  p.regions,
                                  p.religion,
                                ),
                              ),
                            ),
                          );
                          if (updated == true) {
                            ref.refresh(holidayPreferencesProvider);
                          }
                        },
                      ),
                    );
                  },
                ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 16),
                shape: const StadiumBorder(),
              ),
              onPressed: () async {
                final updated = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const TelaNovoFeriado(),
                  ),
                );
                if (updated == true) {
                  ref.refresh(holidayPreferencesProvider);
                }
              },
              child: const Text('Novo'),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
