import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

late PageController pageController;
  int currentIndex = 0;

  void onPageChange(int i){
    currentIndex = i;
    update();
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
