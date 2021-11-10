import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late PageController pageController;
  
  GlobalKey<RefreshIndicatorState> refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  RxInt testingRefrech = 0.obs;
  RxInt currentIndex = 0.obs;

  Future<void> onRefresh() async{
    Future.delayed(const Duration(milliseconds: 1000), (){
      testingRefrech++;
      print(testingRefrech);
    });
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
