import 'dart:convert';
import 'package:http/http.dart';

void main() async {
  print('Consulta de CEP usando apiCEP');
  print('=============================');  
  final cep = '85960-000';
  print('CEP Informado: $cep');
  print('-----------------------------');  
  final response = await get(Uri.parse('https://cdn.apicep.com/file/apicep/$cep.json'));  
  print(response.body);
  if (response.statusCode == 200) {
    final mapa =  jsonDecode(response.body);
    print(mapa);
    print('Cidade: ' + mapa['city']);
    print('UF: ' + mapa['state']);
    print('Bairro: ' + mapa['district']);
    print('Endereço: ' + mapa['address']);
  } else {
    print('CEP não encontrado');
  }   
  print('----------- Fim -------------');  
  
}
