import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeggussionsController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String? topic;
  String? seggussion;

  String? validator(String value) {
    if (value.isEmpty) {
      return "ما يلزمش يكون فارغ";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}
