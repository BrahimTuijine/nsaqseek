import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/home/controllers/home_controller.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
