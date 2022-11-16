import 'package:pr2/domain/entity/sklad_entity.dart';

class Sklad extends SkladEntity {
  Sklad({
    required super.adress,
    
  });

  Map<String, dynamic> toMap() {
    return {
      'sklad': adress,
    };
  }

  factory Sklad.toFromMap(Map<String, dynamic> json) {
    return Sklad(adress: json['sklad']);
  }
}