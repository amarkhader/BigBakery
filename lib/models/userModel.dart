class Userr {
  String name;
  String phoneNumber;
  String email;
  String password;

  Userr(
      {required this.email,
      required this.name,
      required this.password,
      required this.phoneNumber});

  factory Userr.fromJson(Map<String, dynamic> json) {
    return Userr(
      name: json['name'],
      phoneNumber: json['phonenumber'],
      email: json['email'],
      password: json['password'],
    );
  }
}
