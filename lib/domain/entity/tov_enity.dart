import 'package:pr2/domain/entity/sklad_entity.dart';
import 'package:pr2/domain/entity/tip_entity.dart';

class TovEntity {
  late int id;
  final String Name;
  final TipEnum idTip;
  final SkladEnum idSklad;

  TovEntity({
    this.id = 0,
    required this.Name,
    required this.idTip,
    required this.idSklad,
  });
}
enum TovEnum {
  tov1(id: 1, Name: 'Вланк', idTip:1, idSklad:1);

  const TovEnum({
    required this.id,
    required this.Name,
    required this.idTip,
    required this.idSklad,
  });

  final int id;
  final String Name;
  final int idTip;
  final int idSklad;
}