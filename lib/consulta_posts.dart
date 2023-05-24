
import 'package:consulta_cep/repositories/post_repository.dart';
import 'package:http/http.dart';

void main() async {
  final postRepository = PostRepository();
  
  print('Consulta de todos os Posts');
  
  final posts = await postRepository.buscarPosts();
  //print(posts);
  for (var post in posts) {
    print('id ${post.id}');
    print('title ${post.title}');
  }

  print('');
  print('Buscar Post por ID');
  final post = await postRepository.buscarPorId(4);
  print('title ${post.title}');
  
}