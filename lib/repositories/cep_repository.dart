import 'dart:convert';

import 'package:http/http.dart' as http;
class CepRepository {
  
  Future<Map<String,dynamic>> buscarCep(String cep) async {
    final response = await http.get(Uri.parse('https://cdn.apicep.com/file/apicep/$cep.json'));  
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return {"state":"","city":"","district":"","address":""};
    }   
  }
  
}