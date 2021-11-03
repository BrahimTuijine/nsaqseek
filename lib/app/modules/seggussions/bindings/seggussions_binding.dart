import 'package:get/get.dart';

import '../controllers/seggussions_controller.dart';

class SeggussionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeggussionsController>(
      () => SeggussionsController(),
    );
  }
}
