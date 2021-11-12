import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String? phone;
  String? password;

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

  Future<bool> login(email, password) async {
    http.Response response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': email,
        'password': password,
      }),
    );
    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}
