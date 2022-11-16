import 'package:pr2/domain/entity/tov_entity.dart';

class Tov extends TovEntity {
  Tov({
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'tov': name,
    };
  }

  factory Tov.toFromMap(Map<String, dynamic> json) {
    return Tov(name: json['tov']);
  }
}