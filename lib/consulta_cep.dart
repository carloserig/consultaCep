import 'package:consulta_cep/repositories/cep_repository.dart';

void main() async {

  final cepRepository = CepRepository();

  print('Consulta de CEP usando apiCEP');
  print('-----------------------------');  
  final cep = '85988-000';
  print('CEP Informado: $cep');

  final retornoApi = await cepRepository.buscarCep(cep);
  print('Cidade: ' + retornoApi['city']);
  print('UF: ' + retornoApi['state']);
  print('Bairro: ' + retornoApi['district']);
  print('Endereço: ' + retornoApi['address']);
  print('---------------');
  print('Fim de Consulta');
  
}