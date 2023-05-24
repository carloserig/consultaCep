import 'package:consulta_cep/repositories/cep_repository.dart';

void main() async {

  final cepRepository = CepRepository();

  print('Consulta de CEP usando viacep');
  print('-----------------------------');  
  final cepInfo = '06233030';
  print('CEP Informado: $cepInfo');
  print('---------------');
  
  final cep = await cepRepository.buscarCep(cepInfo);
  print(cep.localidade);
  print(cep.uf);
  print(cep.bairro);
  print(cep.logradouro);
  print('---------------');
  print('Fim de Consulta');

  print('---------------');
  print('Serializar');
  print(cep.toJson());
  
}