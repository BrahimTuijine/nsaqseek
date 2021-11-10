import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/routes/app_pages.dart';
import 'package:nsaqseek/app/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? isOnboarded = prefs.getInt("isOnbarded");
  runApp( MyApp(isOnboarded: isOnboarded));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  final int? isOnboarded;
   const MyApp({Key? key, this.isOnboarded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.DASHBOARD,  //isOnboarded != 0 ? Routes.SPLASH : Routes.LOGIN,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
    );
  }
}
