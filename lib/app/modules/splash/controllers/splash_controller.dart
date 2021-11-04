import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

late PageController pageController;
  RxInt currentIndex = 0.obs;




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
