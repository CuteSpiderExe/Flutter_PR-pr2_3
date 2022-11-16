import 'package:pr2/domain/entity/sot_entity.dart';

class Sot extends SotEntity {
  Sot({
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'sot': name,
    };
  }

  factory Sot.toFromMap(Map<String, dynamic> json) {
    return Sot(name: json['sot']);
  }
}