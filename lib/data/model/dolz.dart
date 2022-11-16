import 'package:pr2/domain/entity/dolz_entity.dart';

class Dolz extends DolzEntity {
  Dolz({
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'dolz': name,
    };
  }

  factory Dolz.toFromMap(Map<String, dynamic> json) {
    return Dolz(name: json['dolz']);
  }
}