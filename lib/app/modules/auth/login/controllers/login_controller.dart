import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:nsaqseek/app/modules/auth/login_model.dart';
import 'package:nsaqseek/app/modules/auth/providers/auth_provider.dart';
import 'package:nsaqseek/app/modules/auth/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final AuthProvider _auth = AuthProvider();
  late SharedPreferences prefs;
  RxBool isloading = false.obs;
  String? email;
  String? password;

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    super.onInit();
  }

  validateNumber(String val) {
    if (!val.isEmail) {
      return "لازم يكون عندك بريد إلكتروني";
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

  Future<void> checkLogin() async {
    final isValid = loginFormKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
    if (email != null && password != null) {
      isloading.value = true;
      try {
        http.Response response = await _auth.login(email!, password!);
        if (response.statusCode == 200) {
          final token = Login.fromJson(jsonDecode(response.body));
          final payload = Jwt.parseJwt(token.token.toString());
          final decodedPayload = Token.fromJson(payload);
          // set the token inside the prefs
          await prefs.setString("username", decodedPayload.username.toString());
          await prefs.setString("id", decodedPayload.id.toString());


          // go to dashboard
          Get.offNamedUntil("/dashboard", (route) => false);

        } else {
          isloading.value = false;
          Get.snackbar(
            "خطأ في التسجيل",
            "ثبت من المعطيات الشخصية",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      } catch (e) {
        isloading.value = false;
        Get.snackbar(
          "خطأ",
          "إن شاء الله يتصلح في أقرب وقت",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }
}
