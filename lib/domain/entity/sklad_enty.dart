import 'package:pr2/domain/entity/post_entity.dart';
class SkladEntity {
  late int id;
  final String Name;
  final PostEnum idPost;
  

  SkladEntity({
    this.id = 0,
    required this.Name,
    required this.idPost,
    
  });
}
enum SkladEnum {
  sklad1(id: 1, Name: 'Биба', idPost:1);

  const SkladEnum({
    required this.id,
    required this.Name,
    required this.idPost,
    
  });

  final int id;
  final String Name;
  final int idPost;
  
}