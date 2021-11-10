import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/modules/splash/model/spalsh_model.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: controller.currentIndex,
              controller: controller.pageController,
              itemCount: onBoarding.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(Get.height * .1 / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        onBoarding[i].title.toString(),
                        style: const TextStyle(
                          color: Constants.blueGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        onBoarding[i].discription.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Constants.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .5,
                        child: Image(
                          image: AssetImage(
                            onBoarding[i].image.toString(),
                          ),
                        ),
                      ),
                      i == 2
                          ? OriginalButton(
                              bgColor: Constants.blueGreen,
                              onpressed: () {
                                controller.storeOnboardInfo();
                                Get.offAllNamed("/login");
                              },
                              text: 'إتفضل',
                            )
                          : const Text(""),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onBoarding.length,
                (index) {
                  return Obx(() => AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        margin: const EdgeInsets.only(right: 5),
                        height: 5,
                        width: controller.currentIndex.value == index ? 15 : 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.width * .1),
                          color: controller.currentIndex.value == index
                              ? Constants.blueGreen
                              : Constants.grey.withOpacity(.4),
                        ),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
