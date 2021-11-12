import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {

late PageController pageController;
  RxInt currentIndex = 0.obs;

  storeOnboardInfo() async {
    print("shared pref called");
    int isOnboarded = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("isOnbarded", isOnboarded);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }


  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
