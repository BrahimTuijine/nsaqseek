import 'package:get/get.dart';

import '../controllers/enddrawer_controller.dart';

class EnddrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnddrawerController>(
      () => EnddrawerController(),
    );
  }
}
