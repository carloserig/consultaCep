import 'package:consulta_cep/models/cep.dart';
import 'package:http/http.dart';
class CepRepository {
  
  Future<Cep> buscarCep(String cep) async {
    final response = await get(Uri.parse('https://viacep.com.br/ws/$cep/json/')); 
    if (response.statusCode != 200){
      throw Exception('Erro ao buscar CEP');
    } 
    final responseData = response.body;
    print(responseData.runtimeType);
    print(responseData);
    if (responseData.isEmpty) {
      throw Exception('CEP não encontrado');
    }
    return Cep.fromJson(responseData);
  }
  
}