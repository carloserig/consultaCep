import 'dart:convert';

class Cep {
  String code;
  String state;
  String city;
  String district;
  String address;

  Cep({required this.code, required this.state, required this.city, required this.district, required this.address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'state': state,
      'city': city,
      'district': district,
      'address': address,
    };
  }

  String toJson() => json.encode(toMap());

  factory Cep.fromMap(Map<String, dynamic> map) {
    return Cep(
      code: map['code'] ?? '',
      state: map['state'] ?? '',
      city: map['city'] ?? '',
      district: map['district'] ?? '',
      address: map['address'] ?? '',
    );
  }

  factory Cep.fromJson(String source) => Cep.fromMap(json.decode(source) as Map<String, dynamic>);

}
