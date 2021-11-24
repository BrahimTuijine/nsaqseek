import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nsaqseek/app/theme/constants.dart';

class DemandeProvider {
  static String baseUrl = Constants.endpoint + "api/demands.json";

  Future<http.Response> sendDemand(String fullname, int tel, String topic,
      String description, String? owner) {
    return http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'fullName': fullname,
        'tel': tel,
        'topic': topic,
        'description': description,
        'owner': owner
      }),
    );
  }
}
