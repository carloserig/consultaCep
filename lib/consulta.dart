import 'dart:convert';
import 'package:http/http.dart';

void main() async {
  
  // print('Consulta de CEP usando apiCEP');
  // print('=============================');  
  // final cep = '85960-000';
  // print('CEP Informado: $cep');
  // print('-----------------------------');  
  // final response = await get(Uri.parse('https://viacep.com.br/ws/$cep/json/'));  
  // print(response.body);
  // if (response.statusCode == 200) {
  //   final mapa =  jsonDecode(response.body);
  //   print(mapa);
  //   print('localidade: ' + mapa['localidade']);
  // } else {
  //   print('CEP não encontrado');
  // }   
  // print('----------- Fim -------------');  
  

  print('Consulta de Posts');
  print('=============================');  
  final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));  
  final posts = jsonDecode(response.body);
  print(posts);
  print(posts);
  print(posts.runtimeType);
  for (var post in posts) {
    print('''
          ${post['userId']}
          ${post['id']}
          ${post['title']}
          ${post['body']}
          ''');
  }
  print('----------- Fim -------------');  
}
