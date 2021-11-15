import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/home/controllers/home_controller.dart';
import 'package:nsaqseek/app/modules/seggussions/controllers/seggussions_controller.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();

    if (tabIndex != 0 || tabIndex != 2) {
      Get.delete<HomeController>();
      Get.delete<SeggussionsController>();
    }
  }
}
