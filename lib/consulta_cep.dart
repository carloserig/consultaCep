import 'package:consulta_cep/repositories/cep_repository.dart';

void main() async {

  final cepRepository = CepRepository();

  print('Consulta de CEP usando apiCEP');
  print('-----------------------------');  
  final cepInfo = '06233-030';
  print('CEP Informado: $cepInfo');
  print('---------------');
  
  final cep = await cepRepository.buscarCep(cepInfo);
  print(cep.code);
  print(cep.city);
  print(cep.state);
  print(cep.district);
  print(cep.address);
  print('---------------');
  print('Fim de Consulta');
  
}