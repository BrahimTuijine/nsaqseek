import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/routes/app_pages.dart';
import 'package:nsaqseek/app/theme/theme.dart';
import 'package:nsaqseek/main_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> backgrounHandler(RemoteMessage msg) async {
  print(msg.data.toString());
  print(msg.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgrounHandler);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? isOnboarded = prefs.getInt("isOnbarded");
  runApp(MyApp(isOnboarded: isOnboarded));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
}

class MyApp extends GetView<MainController> {
  final int? isOnboarded;
  const MyApp({Key? key, this.isOnboarded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding:
          BindingsBuilder(() => {Get.put<MainController>(MainController())}),
      debugShowCheckedModeBanner: false,
      initialRoute:
          Routes.DASHBOARD, //isOnboarded != 0 ? Routes.SPLASH : Routes.LOGIN,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
    );
  }
}
