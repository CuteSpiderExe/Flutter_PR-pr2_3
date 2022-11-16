class DolzEntity {
  late int id;
  final String name;

  DolzEntity({
    required this.name,
  });
}

enum DolzEnum {
  dolz1(id: 1, name: 'Продавец');

  const DolzEnum({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}