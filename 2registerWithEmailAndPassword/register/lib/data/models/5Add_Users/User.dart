class SocialUserModel {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? token;

  SocialUserModel({
    this.email,
    this.name,
    this.phone,
    this.password,
    this.token,
  });

  SocialUserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];

    name = json['name'];
    phone = json['phone'];
    token = json['token'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'token': token,
    };
  }
}
