import 'package:pr2/domain/entity/sot_entity.dart';
import 'package:pr2/domain/entity/tov_entity.dart';
class ZakEntity {
  late int id;
  final SotEnum idSot;
  final TovEnum idTov;

  ZakEntity({
    this.id = 0,
    required this.idSot,
    required this.idTov,
  });
}
enum ZakEnum {
  zak1(id: 1, idSot:1, idTov:1);

  const ZakEnum({
    required this.id,
    required this.idSot,
    required this.idTov,
  });

  final int id;
  final int idSot;
  final int idTov;
}