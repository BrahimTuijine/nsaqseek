import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/home/widgets/customnews_widget.dart';
import 'package:nsaqseek/app/modules/home/widgets/customsearch_widget.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الرئيسية',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: Constants.gradient,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: Get.height * .05,
                      decoration: BoxDecoration(
                        gradient: Constants.gradient,
                      ),
                    ),
                  ),
                  Positioned(
                    top: Get.height * .05,
                    child: SizedBox(
                      height: 50,
                      width: Get.width,
                    ),
                  ),
                  const Positioned(
                    child: CustomSearch(
                      textHint: 'لوج بنوع السرفيس',
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 5,
                        left: Get.width * .1 / 2,
                        right: Get.width * .1 / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xff7F7F7F),
                                size: 15,
                              ),
                              Text(
                                "أظهر الكل",
                                style: TextStyle(
                                    color: Color(0xff7F7F7F),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              )
                            ],
                          ),
                        ),
                        const Text(
                          "شفمة جديد",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .5 / 2,
                    child: PageView.builder(
                      controller: controller.pageController,
                      onPageChanged: controller.currentIndex,
                      itemCount: 4,
                      itemBuilder: (_, int index){
                        return Padding(
                          padding: EdgeInsets.all(Get.width * .1 /4),
                          child: const CustomNews(),
                        );
                      },

                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
