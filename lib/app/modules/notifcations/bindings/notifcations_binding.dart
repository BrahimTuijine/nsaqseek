import 'package:get/get.dart';

import '../controllers/notifcations_controller.dart';

class NotifcationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifcationsController>(
      () => NotifcationsController(),
    );
  }
}
