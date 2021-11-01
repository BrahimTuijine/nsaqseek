import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/routes/app_pages.dart';
import 'package:nsaqseek/app/theme/theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.routes,
  ));
}
