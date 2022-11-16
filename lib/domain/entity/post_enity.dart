class PostEntity {
  late int id;


}

enum PostEnum {
  post1(id: 1);

  const PostEnum({
    required this.id
  });

  final int id;
}