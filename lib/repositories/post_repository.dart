
import 'dart:convert';

import 'package:consulta_cep/models/post.dart';
import 'package:http/http.dart';

class PostRepository {

  Future<List<Post>> buscarPosts() async {
    
    final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/posts')); 
    
    if (response.statusCode != 200){
      throw Exception('Erro ao buscar Posts');
    } 
    final postsList = jsonDecode(response.body);

    print('----postsList----');
    print(postsList);

    // Exemplo de conversão lista para mapa
    //print('----postsMap----');
    //Map postsMap = postsList.asMap();
    //print(postsMap);
  
    final todosPosts = postsList.map<Post>((postMap) {
      return Post.fromMap(postMap);
    }).toList();

    return todosPosts;
    //return postsList.map<Post>((postMap) => Post.fromMap(postMap)).toList;
  }

  Future<Post> buscarPorId(int id) async {
    
    final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id')); 
    
    if (response.statusCode != 200){
      throw Exception('Erro ao buscar Posts');
    } 
    return Post.fromJson(response.body);
  }
}