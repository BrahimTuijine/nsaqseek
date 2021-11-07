import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/home/controllers/home_controller.dart';
import 'package:nsaqseek/app/modules/seggussions/controllers/seggussions_controller.dart';
import 'package:nsaqseek/app/modules/services/controllers/services_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<SeggussionsController>(
      () => SeggussionsController(),
    );
    Get.lazyPut<ServicesController>(
      () => ServicesController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
