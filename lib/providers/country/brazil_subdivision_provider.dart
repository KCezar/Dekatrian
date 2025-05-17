import '/domain/models/subdivision.dart';

class BrazilSubdivisionProvider {
  /// Mapa de código → nome legível
  static const Map<String, String> subdivisionCodes = {
    'BR-AC': 'Acre',
    'BR-AL': 'Alagoas',
    'BR-AP': 'Amapá',
    'BR-AM': 'Amazonas',
    'BR-BA': 'Bahia',
    'BR-CE': 'Ceará',
    'BR-ES': 'Espírito Santo',
    'BR-ES-VIX': 'Espírito Santo/Vitória',
    'BR-GO': 'Goiás',
    'BR-MA': 'Maranhão',
    'BR-MT': 'Mato Grosso',
    'BR-MS': 'Mato Grosso do Sul',
    'BR-MG': 'Minas Gerais',
    'BR-PA': 'Pará',
    'BR-PB': 'Paraíba',
    'BR-PR': 'Paraná',
    'BR-PE': 'Pernambuco',
    'BR-PI': 'Piauí',
    'BR-RJ': 'Rio de Janeiro',
    'BR-RN': 'Rio Grande do Norte',
    'BR-RS': 'Rio Grande do Sul',
    'BR-RO': 'Rondônia',
    'BR-RR': 'Roraima',
    'BR-SC': 'Santa Catarina',
    'BR-SP': 'São Paulo',
    'BR-SE': 'Sergipe',
    'BR-TO': 'Tocantins',
  };

  /// Retorna uma lista de pares (código, nome) para UI
  static List<Subdivision> getAll() =>
    subdivisionCodes.entries
      .map((e) => Subdivision(code: e.key, name: e.value))
      .toList();
}