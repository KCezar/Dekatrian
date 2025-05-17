// lib/presentation/screens/tela_novo_feriado.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dekatrian/domain/models/holiday_preference.dart';
import 'package:dekatrian/providers/holiday_providers.dart';

class TelaNovoFeriado extends ConsumerStatefulWidget {
  final HolidayPreference? preference;
  const TelaNovoFeriado({Key? key, this.preference}) : super(key: key);

  @override
  ConsumerState<TelaNovoFeriado> createState() => _TelaNovoFeriadoState();
}

class _TelaNovoFeriadoState extends ConsumerState<TelaNovoFeriado>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _search = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Se estivermos EDITANDO, pré-popula; se for NOVO, limpa as seleções
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.preference != null) {
        ref.read(selectedCountriesProvider.notifier).state =
            widget.preference!.countries;
        ref.read(selectedRegionsProvider.notifier).state =
            widget.preference!.regions;
        ref.read(selectedReligionProvider.notifier).state =
            widget.preference!.religion;
      } else {
        // Limpa todas para nova seleção
        ref.read(selectedCountriesProvider.notifier).state = [];
        ref.read(selectedRegionsProvider.notifier).state = [];
        ref.read(selectedReligionProvider.notifier).state = null;
      }
    });

    _tabController.addListener(() => setState(() => _search = ''));
  }

  @override
  Widget build(BuildContext context) {
    final countries = ref.watch(selectedCountriesProvider);
    final regions   = ref.watch(selectedRegionsProvider);
    final religion  = ref.watch(selectedReligionProvider);
    final canSave   = countries.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Feriado'),
        backgroundColor: const Color(0xFF6200EA),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (v) => setState(() => _search = v),
                ),
              ),
              TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(text: 'País'),
                  Tab(text: 'Região'),
                  Tab(text: 'Religião'),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildMultiList(
            items: ref.watch(countriesProvider),
            selected: countries,
            onChanged: (code, checked) {
              final list = [...countries];
              checked ? list.add(code) : list.remove(code);
              ref.read(selectedCountriesProvider.notifier).state = list;
              // limpa regiões inválidas
              ref.read(selectedRegionsProvider.notifier).state =
                  ref.read(selectedRegionsProvider)
                      .where((r) => list.contains(r.split('-').first))
                      .toList();
            },
          ),
          _buildMultiList(
            items: ref.watch(subdivisionsProvider),
            selected: regions,
            onChanged: (code, checked) {
              final list = [...regions];
              checked ? list.add(code) : list.remove(code);
              ref.read(selectedRegionsProvider.notifier).state = list;
            },
          ),
          _buildSingleList(
            items: ref.watch(availableReligionsProvider),
            selected: religion,
            onChanged: (code) =>
                ref.read(selectedReligionProvider.notifier).state = code,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: const StadiumBorder(),
          ),
          onPressed: canSave
              ? () async {
                  await saveHolidayPreferences(ref,
                    preferenceId: widget.preference?.id,);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Preferências salvas com sucesso!'),
                    ),
                  );
                  Navigator.of(context).pop(true);
                }
              : null,
          child: const Text('Salvar'),
        ),
      ),
    );
  }

  Widget _buildMultiList({
    required List<dynamic> items,
    required List<String> selected,
    required void Function(String, bool) onChanged,
  }) {
    final filtered = items.where((i) {
      final name = (i as dynamic).name as String;
      return name.toLowerCase().contains(_search.toLowerCase());
    }).toList();
    return ListView(
      padding: const EdgeInsets.all(12),
      children: filtered.map((i) {
        final code = (i as dynamic).code as String;
        final name = (i as dynamic).name as String;
        final checked = selected.contains(code);
        return CheckboxListTile(
          title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          value: checked,
          onChanged: (v) => onChanged(code, v!),
          controlAffinity: ListTileControlAffinity.leading,
        );
      }).toList(),
    );
  }

  Widget _buildSingleList({
    required List<dynamic> items,
    required String? selected,
    required void Function(String?) onChanged,
  }) {
    final filtered = items.where((i) {
      final name = (i as dynamic).name as String;
      return name.toLowerCase().contains(_search.toLowerCase());
    }).toList();
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        RadioListTile<String?>(
          title: const Text('Nenhuma'),
          value: null,
          groupValue: selected,
          onChanged: onChanged,
        ),
        ...filtered.map((i) {
          final code = (i as dynamic).code as String;
          final name = (i as dynamic).name as String;
          return RadioListTile<String>(
            title: Text(name),
            value: code,
            groupValue: selected,
            onChanged: (v) => onChanged(v),
          );
        }),
      ],
    );
  }
}