import 'package:get/get.dart';

import '../controllers/demand_controller.dart';

class DemandBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DemandController>(
      () => DemandController(),
    );
  }
}
