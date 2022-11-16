import 'package:pr2/domain/entity/zak_entity.dart';

class Zak extends ZakEntity {
  Zak({
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'zak': name,
    };
  }

  factory Zak.toFromMap(Map<String, dynamic> json) {
    return Zak(name: json['zak']);
  }
}