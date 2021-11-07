import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/demand/views/maanawi_view.dart';
import 'package:nsaqseek/app/modules/demand/views/mowaten_view.dart';
import 'package:nsaqseek/app/modules/demand/widgets/demand_app_bar.dart';

import '../controllers/demand_controller.dart';

class DemandView extends GetView<DemandController> {
  const DemandView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: tabsAppBar(context, "مطلب نفاذ للمعلومة", "شخص معنوي", "مواطن"),
        body: TabBarView(
          children: [
            Mowaten(controller: controller, size: size),
            Maanawi(controller: controller, size: size),
          ],
        ),
      ),
    );
  }
}



