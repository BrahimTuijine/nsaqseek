import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/modules/demand/widgets/demand_app_bar.dart';
import 'package:nsaqseek/app/modules/demand/widgets/demand_input_form_field.dart';
import 'package:nsaqseek/app/theme/constants.dart';

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
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: controller.formKeyOne,
              child: SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(size.width / 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            const Text(
                              "اسمك",
                              style: TextStyle(
                                  color: Constants.blueGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                            DemandInputField(
                              texthint: 'اسمك',
                              onsaved: (value) => controller.name = value,
                              validator: (value) =>
                                  controller.validator(value!),
                              maxline: 1,
                              minline: 1,
                            ),
                            SizedBox(
                              height: size.height * .1 / 3,
                            ),
                            const Text(
                              "لقبك",
                              style: TextStyle(
                                  color: Constants.blueGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                            DemandInputField(
                              texthint: 'لقبك',
                              onsaved: (value) => controller.lastname = value,
                              validator: (value) =>
                                  controller.validator(value!),
                              maxline: 1,
                              minline: 1,
                            ),
                            SizedBox(
                              height: size.height * .1 / 3,
                            ),
                            const Text(
                              "نومرو تلفون",
                              style: TextStyle(
                                  color: Constants.blueGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                            DemandInputField(
                              texthint: '55555555',
                              onsaved: (value) => controller.phone = value,
                              maxline: 1,
                              minline: 1,
                            ),
                            SizedBox(
                              height: size.height * .1 / 3,
                            ),
                            const Text(
                              "موضوع",
                              style: TextStyle(
                                  color: Constants.blueGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                            DemandInputField(
                              texthint: 'موضوع المطلب',
                              onsaved: (value) => controller.title = value,
                              validator: (value) =>
                                  controller.validator(value!),
                              maxline: 1,
                              minline: 1,
                            ),
                            SizedBox(
                              height: size.height * .1 / 3,
                            ),
                            const Text(
                              "معلومة",
                              style: TextStyle(
                                  color: Constants.blueGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: size.height * .1 / 9,
                            ),
                            DemandInputField(
                              texthint: 'شنية لمعلومة ألي تحب تعرفها',
                              onsaved: (value) =>
                                  controller.information = value,
                              validator: (value) =>
                                  controller.validator(value!),
                              maxline: 5,
                              minline: 1,
                            ),
                            SizedBox(
                              height: size.height * .1 / 3,
                            ),
                            OriginalButton(
                              bgColor: Colors.lightBlue,
                              text: 'ابعث',
                              onpressed: () {
                                // if (_formOne.currentState!.validate()) {
                                //   _formOne.currentState!.save();
                                //   Random random = Random();
                                //   DateTime today = DateTime.now();
                                //   String dateSlug =
                                //       "${today.year.toString()}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}";

                                //   listOfRequestes.add(
                                //     Requests(
                                //         id: random.nextInt(3000) + 3001,
                                //         title: title,
                                //         date: dateSlug,
                                //         inprogress: true,
                                //         content: information),
                                //   );
                                //   displayNotification(title,
                                //       "نشالله مبتناش عليك. أعمل طلة على الاشعارات");
                                //   Navigator.of(context)
                                //       .pushReplacementNamed("thanks");
                                // }

                                controller.checkValdMowaten();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: controller.formKeyTwo,
              child: SizedBox(
                width: double.infinity,
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(size.width / 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "تسمية الاجتماعية",
                            style: TextStyle(
                                color: Constants.blueGreen,
                                fontWeight: FontWeight.bold),
                          ),
                          DemandInputField(
                            texthint: 'تسمية الاجتماعية',
                            onsaved: (value) =>
                                controller.communityName = value,
                            validator: (value) => controller.validator(value!),
                            maxline: 1,
                            minline: 1,
                          ),
                          SizedBox(
                            height: size.height * .1 / 3,
                          ),
                          const Text(
                            "المقر الاجتماعي",
                            style: TextStyle(
                                color: Constants.blueGreen,
                                fontWeight: FontWeight.bold),
                          ),
                          DemandInputField(
                            texthint: 'المقر الاجتماعي',
                            onsaved: (value) =>
                                controller.communityplace = value,
                            validator: (value) => controller.validator(value!),
                            maxline: 1,
                            minline: 1,
                          ),
                          SizedBox(
                            height: size.height * .1 / 3,
                          ),
                          const Text(
                            "نومرو تلفون",
                            style: TextStyle(
                                color: Constants.blueGreen,
                                fontWeight: FontWeight.bold),
                          ),
                          DemandInputField(
                            texthint: '55555555',
                            onsaved: (value) =>
                                controller.communityphone = value,
                            maxline: 1,
                            minline: 1,
                          ),
                          SizedBox(
                            height: size.height * .1 / 3,
                          ),
                          const Text(
                            "موضوع",
                            style: TextStyle(
                                color: Constants.blueGreen,
                                fontWeight: FontWeight.bold),
                          ),
                          DemandInputField(
                            texthint: 'موضوع المطلب',
                            onsaved: (value) => controller.cumtitle = value,
                            validator: (value) => controller.validator(value!),
                            maxline: 1,
                            minline: 1,
                          ),
                          SizedBox(
                            height: size.height * .1 / 3,
                          ),
                          const Text(
                            "معلومة",
                            style: TextStyle(
                                color: Constants.blueGreen,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: size.height * .1 / 9,
                          ),
                          DemandInputField(
                            texthint: 'شنية لمعلومة ألي تحب تعرفها',
                            onsaved: (value) =>
                                controller.communityInformation = value,
                            validator: (value) => controller.validator(value!),
                            maxline: 5,
                            minline: 1,
                          ),
                          SizedBox(
                            height: size.height * .1 / 3,
                          ),
                          OriginalButton(
                            bgColor: Colors.lightBlue,
                            text: 'ابعث',
                            onpressed: () {
                              controller.checkValdMa3nawi();
                              // if (_formTwo.currentState!.validate()) {
                              //   _formTwo.currentState!.save();
                              //   Random random = Random();
                              //   DateTime today = DateTime.now();
                              //   String dateSlug =
                              //       "${today.year.toString()}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}";

                              //   listOfRequestes.add(
                              //     Requests(
                              //         id: random.nextInt(3000) + 3001,
                              //         title: cumtitle,
                              //         date: dateSlug,
                              //         inprogress: true,
                              //         content: communityInformation),
                              //   );

                              //   displayNotification(cumtitle,
                              //       "نشالله مبتناش عليك. أعمل طلة على الاشعارات");
                              //   Navigator.of(context)
                              //       .pushReplacementNamed("thanks");
                              // }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
