import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:nsaqseek/app/modules/notifcations/demands_model.dart';
import 'package:nsaqseek/app/modules/notifcations/providers/notification_provider.dart';

class NotifcationsController extends GetxController {
  final count = 0.obs;
  final NotificationProvider _notificationProvider = NotificationProvider();

  @override
  void onInit() {
    fetchDemands();
    super.onInit();
  }

  fetchDemands() async {
    try {
      http.Response response = await _notificationProvider.fetchDemands();
      final testing = Demands.fromJson(jsonDecode(response.body));
      print(testing);
    } catch (e) {
      print(e);
    }
  }

}

// brahim@gamil.com