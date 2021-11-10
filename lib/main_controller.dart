import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  FirebaseMessaging fcm = FirebaseMessaging.instance;
  @override
  void onInit() async {
    fcm.getToken().then((value) {
      print(value);
    });
    // when the app is terminared
    fcm.getInitialMessage().then((event) {
      if (event != null) {
        final routeFromFireBase = event.data["route"];
        Get.toNamed(routeFromFireBase);
      }
    });

    // when the app is in background
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      final routeFromFireBase = event.data["route"];
      Get.toNamed(routeFromFireBase);
    });

    //when the app is in forground
    FirebaseMessaging.onMessage.listen((event) {
      final routeFromFireBase = event.data["route"];
      print("qsdqsd");
    });

    super.onInit();
  }
}