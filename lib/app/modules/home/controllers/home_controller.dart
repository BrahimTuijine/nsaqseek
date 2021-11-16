import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/services/model/service_model.dart';

class HomeController extends GetxController {
  late PageController pageController;
  
  GlobalKey<RefreshIndicatorState> refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  RxInt testingRefrech = 0.obs;
  RxInt currentIndex = 0.obs;

 List<ServiceModel> service = [
    ServiceModel(
        image: 'assets/images/6@4x.png',
        page: "seggussions",
        text: "إقتراحات"),
    ServiceModel(
        image: 'assets/images/3@4x.png',
        page: "/demand",
        text: 'مطلب نافذ إلى المعلومة'),
    ServiceModel(
        image: 'assets/images/5@4x.png',
        page: "soon",
        text: "الكميون وين"),
    ServiceModel(
        image: 'assets/images/2@4x.png',
        page: "soon",
        text: "اطلب البلدية"),
  ];

  List<ServiceModel> foundedService = [];


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
