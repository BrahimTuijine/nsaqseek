import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/modules/seggussions/widgets/my_text_form_field.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/seggussions_controller.dart';

class SeggussionsView extends GetView<SeggussionsController> {
  const SeggussionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'مقترحات للبلدية',
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
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(size.width / 10),
              child: Form(
                key: controller.loginFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "اسمك",
                      style: TextStyle(
                          color: Constants.blueGreen,
                          fontWeight: FontWeight.bold),
                    ),
                    const SeggussionsInput(
                      texthint: 'اسمك',
                      keybord: TextInputType.text,
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
                    const SeggussionsInput(
                      texthint: 'لقبك',
                      maxline: 1,
                      minline: 1,
                      keybord: TextInputType.text,
                    ),
                    SizedBox(
                      height: size.height * .1 / 3,
                    ),
                    const Text(
                      "موضوع الاقتراح",
                      style: TextStyle(
                          color: Constants.blueGreen,
                          fontWeight: FontWeight.bold),
                    ),
                    SeggussionsInput(
                      texthint: "موضوع الاقتراح",
                      onsaved: (value) => controller.topic = value,
                      validator: (value) {
                        return controller.validator(value!);
                      },
                      keybord: TextInputType.text,
                      maxline: 1,
                      minline: 1,
                    ),
                    SizedBox(
                      height: size.height * .1 / 3,
                    ),
                    const Text(
                      "الاقتراح",
                      style: TextStyle(
                          color: Constants.blueGreen,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * .1 / 9,
                    ),
                    SeggussionsInput(
                      keybord: TextInputType.multiline,
                      maxline: 5,
                      minline: 1,
                      texthint: 'الاقتراح',
                      onsaved: (value) => controller.seggussion = value,
                      validator: (value) {
                        return controller.validator(value!);
                      },
                    ),
                    SizedBox(
                      height: size.height * .1 / 3,
                    ),
                    OriginalButton(
                      bgColor: Colors.lightBlue,
                      text: 'ابعث',
                      onpressed: () {
                        controller.checkLogin();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
