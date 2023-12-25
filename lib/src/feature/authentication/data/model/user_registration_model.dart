

class UserRegiData {
  int? id;
  String? fullName;
  String? email;
  String? password;
  String? phone;
  String? address;
  String? apartment;
  String? dateOfBirth;
  String? city;
  String? state;
  String? country;
  String? pincode;
  String? image;
  String? createdAt;

  UserRegiData(
      {this.id,
      this.fullName,
      this.email,
      this.password,
      this.phone,
      this.address,
      this.apartment,
      this.dateOfBirth,
      this.city,
      this.state,
      this.country,
      this.pincode,
      this.image,
      this.createdAt});

  UserRegiData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    address = json['address'];
    apartment = json['apartment'];
    dateOfBirth = json['date_of_birth'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    pincode = json['pincode'];
    image = json['image'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['full_name'] = fullName;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['address'] = address;
    data['apartment'] = apartment;
    data['date_of_birth'] = dateOfBirth;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['pincode'] = pincode;
    data['image'] = image;
    data['created_at'] = createdAt;
    return data;
  }
}
