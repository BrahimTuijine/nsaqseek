import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String? phone;
  String? password;

  @override
  void onInit() async {
    super.onInit();
  }

  validateNumber(String val) {
    if (val.isEmpty) {
      return "ما يلزمش يكون فارغ";
    } else if (val.length != 8) {
      return "نومرو مش صحيح";
    }
    return null;
  }

  validatePassword(String val) {
    if (val.isEmpty) {
      return "ما يلزمش يكون فارغ";
    } else if (val.length <= 6) {
      return "يلزم أكثر من 6 حروف";
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
