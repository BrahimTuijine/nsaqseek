import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthProvider {
  static String baseUrl = "http://192.168.1.127:8000/api/users";

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

  register(email, password, fullname, token) async {
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
