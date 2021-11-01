import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  String? nameLastName;
  String? phone;
  String? password;

  validNameLastName(String val){
    if (val.isEmpty) {
      return "ما يلزمش يكون فارغ";
    }else if (val.length <= 30) {
      return "اسمك و لقبك أقل من 30 حرف";
    }
    return null;
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
    final isValid = registerFormKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    registerFormKey.currentState!.save();
  }
}
