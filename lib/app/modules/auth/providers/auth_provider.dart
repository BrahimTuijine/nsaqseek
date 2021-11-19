import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nsaqseek/app/theme/constants.dart';

class AuthProvider {
  static String baseUrl =  Constants.endpoint +  "api/users.json";
  static String baseLoginUrl = Constants.endpoint + "api/login_check"; 

  Future<http.Response> login(String username, String password) {
    return http.post(
      Uri.parse(baseLoginUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },  
      body: jsonEncode(<String, String>{
        'username': username,
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
