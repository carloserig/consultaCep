import 'package:consulta_cep/models/cep.dart';
import 'package:http/http.dart';
class CepRepository {
  
  Future<Cep> buscarCep(String cep) async {
    final responseCliente = await get(Uri.parse('https://cdn.apicep.com/file/apicep/$cep.json'));  
    return Cep.fromJson(responseCliente.body);
  }
  
}