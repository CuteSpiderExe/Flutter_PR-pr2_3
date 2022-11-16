import 'package:pr2/domain/entity/user_entity.dart';
import 'package:pr2/domain/entity/dolz_entity.dart';
class SotEntity {
  late int id;
  final String Name;
  final UserEnum idUser;
  final DolzEnum idDolz;

  SotEntity({
    this.id = 0,
    required this.Name,
    required this.idUser,
    required this.idDolz,
  });
}
enum SotEnum {
  sot1(id: 1, Name: 'Биба', idUser:1, idDolz:1);

  const SotEnum({
    required this.id,
    required this.Name,
    required this.idUser,
    required this.idDolz,
  });

  final int id;
  final String Name;
  final int idUser;
  final int idDolz;
}