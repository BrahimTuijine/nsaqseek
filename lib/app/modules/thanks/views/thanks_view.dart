import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/thanks_controller.dart';

class ThanksView extends GetView<ThanksController> {
  const ThanksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/12@4x.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1 / 3,
            ),
            const Text(
              "مطلب وصل. نجاوبوك في أقرب وقت",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1 / 3,
            ),
            OriginalButton(
              bgColor: Constants.blueGreen,
              onpressed: () {
                Get.offNamedUntil("dashboard", (route) => false);
              },
              text: "الرئيسية",
            )
          ],
        ),
      ),
    );
  }
}
