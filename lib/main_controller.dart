import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  FirebaseMessaging fcm = FirebaseMessaging.instance;
  @override
  void onInit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    fcm.getToken().then((value) async {
      if(value != null){
        await prefs.setString("fcmtoken", value);
      }
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
      // TODO the notification shoul appear when the app is open
    });

    super.onInit();
  }
}

// 