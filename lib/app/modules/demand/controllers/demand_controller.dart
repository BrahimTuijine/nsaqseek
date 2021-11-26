import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/demand/providers/demand_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class DemandController extends GetxController {
  final GlobalKey<FormState> formKeyOne = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyTwo = GlobalKey<FormState>();

  // init the provider
  final DemandeProvider _provider = DemandeProvider();

  String? name;

  String? lastname;

  String? phone;

  String? title;

  String? information;

  String? communityName;
  String? cumtitle;

  String? communityplace;

  String? communityphone;

  String? communityInformation;

  late SharedPreferences prefs;

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    super.onInit();
  }

  String? validator(String value) {
    if (value.isEmpty) {
      return "ما يلزمش يكون فارغ";
    }
    return null;
  }

  void checkValdMowaten() async {
    final isValid = formKeyOne.currentState!.validate();

    if (!isValid) {
      return;
    }
    formKeyOne.currentState!.save();
    String fullname = name! + " " + lastname!;
    int tel = int.parse(phone!);
    String? owner = prefs.getString("id");
    http.Response response = await _provider.sendDemand(
        fullname, tel, title.toString(), information.toString(), owner);
    if (response.statusCode == 201) {
      print(jsonDecode(response.body));
      Get.toNamed("thanks");
    }else{
      print(response.body);
    }
  }

  void checkValdMa3nawi() {
    final isValid = formKeyTwo.currentState!.validate();

    if (!isValid) {
      return;
    }
    formKeyTwo.currentState!.save();
  }
}
