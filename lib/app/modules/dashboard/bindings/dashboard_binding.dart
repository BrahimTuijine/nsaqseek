import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/home/controllers/home_controller.dart';
import 'package:nsaqseek/app/modules/seggussions/controllers/seggussions_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<SeggussionsController>(
      () => SeggussionsController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
  }
}
