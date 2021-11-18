import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nsaqseek/app/theme/constants.dart';

class AuthProvider {
  static String baseUrl =  Constants.endpoint +  "api/users";

  Future<http.Response> login(String email, String password) {
    return http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );
  }

  Future<http.Response> register(email, password, fullname, token) async {
    return http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
        'fullName': fullname,
        'token': token,
      }),
    );
  }
}
