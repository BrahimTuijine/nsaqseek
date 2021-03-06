import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/modules/auth/widgets/text_auth_button.dart';
import 'package:nsaqseek/app/modules/auth/widgets/text_form_field.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.isloading.value == true
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.lightBlue,
                ),
              )
            : GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.43,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Constants.blueGreen,
                            Constants.lightGreen
                          ]),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(45),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    .1 /
                                    2),
                            const Text(
                              'سجل و ايجا معانا',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                            ),
                            Image.asset(
                              "assets/images/logo.png",
                              height: MediaQuery.of(context).size.height * .3,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .1,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width / 10),
                              child: Form(
                                key: controller.loginFormKey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    MyTextForm(
                                      onsaved: (value) =>
                                          controller.email = value,
                                      texthint: 'بريد إلكتروني',
                                      validator: (newValue) =>
                                          controller.validateNumber(newValue!),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .1 /
                                              3,
                                    ),
                                    MyTextForm(
                                      onsaved: (String? newValue) =>
                                          controller.password = newValue,
                                      texthint: 'كلمة المرور',
                                      validator: (String? value) =>
                                          controller.validatePassword(value!),
                                    ),
                                    SizedBox(
                                      height: Get.height * .1 / 3,
                                    ),
                                    OriginalButton(
                                      bgColor: Colors.lightBlue,
                                      onpressed: () {
                                        controller.checkLogin();
                                      },
                                      text: 'دخول',
                                    ),
                                    SizedBox(
                                      height: Get.height * .1 / 3,
                                    ),
                                    ChooseToLogin(
                                      ask: 'ان لم يكن لديك حساب ؟',
                                      btnTxt: 'إنشاء حساب   ',
                                      onpressed: () {
                                        Get.toNamed("/register");
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
