import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemandController extends GetxController {
  final GlobalKey<FormState> formKeyOne = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyTwo = GlobalKey<FormState>();

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

  String? validator(String value) {
    if (value.isEmpty) {
      return "ما يلزمش يكون فارغ";
    }
    return null;
  }

  void checkValdMowaten() {
    final isValid = formKeyOne.currentState!.validate();

    if (!isValid) {
      return;
    }
    formKeyOne.currentState!.save();
  }

  void checkValdMa3nawi() {
    final isValid = formKeyTwo.currentState!.validate();

    if (!isValid) {
      return;
    }
    formKeyTwo.currentState!.save();
  }
}
