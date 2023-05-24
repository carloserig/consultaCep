// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cep {
  String cep;
  String uf;
  String localidade;
  String bairro;
  String logradouro;

  Cep({required this.cep, required this.uf, 
        required this.localidade, required this.bairro, 
        required this.logradouro});

  
  // Serialização
  // Pega o Map<String, dynamic> e transforma em um Json
  String toJson() => jsonEncode(toMap());

  // Pega o objeto Cep e transforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'uf': uf,
      'localidade': localidade,
      'bairro': bairro,
      'logradouro': logradouro,
    };
  }
  

  // Desserialização
  // Pega a String Json e transforma em um Map<String, dynamic> 
  factory Cep.fromJson(String json) {
    final map = jsonDecode(json);
    return Cep.fromMap(map);
  } 

  // Pega o Map<String, dynamic> e transforma em um Cep
  factory Cep.fromMap(Map<String, dynamic> map) {
    return Cep(
      cep: map['cep'] ?? '',
      uf: map['uf'] ?? '',
      localidade: map['localidade'] ?? '',
      bairro: map['bairro'] ?? '',
      logradouro: map['logradouro'] ?? '',
    );
  }



  @override
  String toString() {
    return 'Cep(cep: $cep, uf: $uf, localidade: $localidade, bairro: $bairro, logradouro: $logradouro)';
  }
}
