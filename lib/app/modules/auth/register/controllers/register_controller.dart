import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/auth/providers/auth_provider.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final AuthProvider _auth = AuthProvider();
  RxBool isloading = false.obs;
  bool error = false;
  late SharedPreferences prefs;

  String? nameLastName;
  String? email;
  String? password;

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    super.onInit();
  }

  validNameLastName(String val) {
    if (val.isEmpty) {
      return "ما يلزمش يكون فارغ";
    }
    return null;
  }

  validateEmail(String val) {
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

  void checkLogin() async {
    final isValid = registerFormKey.currentState!.validate();
    if (!isValid) return;

    // get the token from shared preferences;
    String? token = prefs.getString("fcmtoken");
    
    
    //save the value of the current state
    registerFormKey.currentState!.save();
    //send a post request
    if (email != null && password != null) {
      print(email);
      print(password);
      isloading.value = true;
      http.Response response = await _auth.register(
          email, password, nameLastName, token);
      if (response.statusCode == 201) {
        print(response.statusCode);
        isloading.value = false;
      } else {
        error = true;
        print(error);
      }
    }
  }
}
// 