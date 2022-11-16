class TipEntity {
  late int id;
  final String name;

  TipEntity({
    required this.name,
  });
}

enum TipEnum {
  tip1(id: 1, name: 'Мясо');

  const TipEnum({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}