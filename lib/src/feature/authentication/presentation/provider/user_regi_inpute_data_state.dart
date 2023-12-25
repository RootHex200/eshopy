

import 'package:flutter_riverpod/flutter_riverpod.dart';

final userregidataholdProvider = StateProvider.autoDispose<HoldUserRegidata>((ref) {
  return HoldUserRegidata(id: 0, fullName: "", email: "", password: "", phone: "", address: "", apartment: "", dateOfBirth: "", city: "", state: "state", country: "country", pincode: "pincode", image: "image");
});

class HoldUserRegidata {
  final int id;
  final String fullName;
  final String email;
  final String password;
  final String phone;
  final String address;
  final String apartment;
  final String dateOfBirth;
  final String city;
  final String state;
  final String country;
  final String pincode;
  final String image;
  HoldUserRegidata({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.apartment,
    required this.dateOfBirth,
    required this.city,
    required this.state,
    required this.country,
    required this.pincode,
    required this.image,
  });

      

  HoldUserRegidata copyWith({
    int? id,
    String? fullName,
    String? email,
    String? password,
    String? phone,
    String? address,
    String? apartment,
    String? dateOfBirth,
    String? city,
    String? state,
    String? country,
    String? pincode,
    String? image,
  }) {
    return HoldUserRegidata(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      apartment: apartment ?? this.apartment,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      image: image ?? this.image,
    );
  }
}
