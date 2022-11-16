import 'package:pr2/domain/entity/tip_entity.dart';

class Tip extends TipEntity {
  Tip({
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'tip': name,
    };
  }

  factory Tip.toFromMap(Map<String, dynamic> json) {
    return Tip(name: json['tip']);
  }
}