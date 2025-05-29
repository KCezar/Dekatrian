/// Diz em quantos dias deslocar o feriado,
/// quando ele cair em certos dias da semana.
class ObservedRuleSet {
  /// chave: DateTime.weekday, valor: quantos dias adicionar
  final Map<int, int> offsets;

  const ObservedRuleSet(this.offsets);

  /// Se o [date] cair num weekday para o qual há regra,
  /// retorna o date + offset, senão retorna o próprio date.
  DateTime apply(DateTime date) {
    final offset = offsets[date.weekday];
    return offset != null ? date.add(Duration(days: offset)) : date;
  }
}
