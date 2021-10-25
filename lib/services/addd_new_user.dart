import 'dart:convert';

import 'package:bigbakery/constent.dart';
import 'package:http/http.dart' as http;

createUser(
    String name, String email, String password, String phoneNumber) async {
  await http.post(
    Uri.parse('$kBaseURL/Users.json'),
    body: jsonEncode(<String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
    }),
  );
}


