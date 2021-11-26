import 'package:http/http.dart' as http;
import 'package:nsaqseek/app/theme/constants.dart';

class NotificationProvider {
  final String demandsEndpoint = Constants.endpoint + "api/demands.json";
  final String responsesEndpoint = Constants.endpoint + "api/responses.json";

  Future<http.Response> fetchDemands() {
    return http.get(
      Uri.parse(demandsEndpoint),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
  }


  Future<http.Response> fetchResponses() {
    return http.get(
      Uri.parse(responsesEndpoint),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
  }
}
