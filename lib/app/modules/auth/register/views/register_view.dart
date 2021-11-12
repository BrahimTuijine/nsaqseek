import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/modules/auth/widgets/text_auth_button.dart';
import 'package:nsaqseek/app/modules/auth/widgets/text_form_field.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.isloading.value ? const Center(
            child: CircularProgressIndicator(
              color: Colors.lightBlue,
            ),
          ): GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.43,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Constants.blueGreen, Constants.lightGreen]),
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
                        height: MediaQuery.of(context).size.height * .1 / 2),
                    const Text(
                      'سجل و اجا معانا',
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
                      height: MediaQuery.of(context).size.height * .1 / 2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 10),
                      child: Form(
                        key: controller.registerFormKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MyTextForm(
                              onsaved: (value) =>
                                  controller.nameLastName = value,
                              texthint: 'إسم و اللقب',
                              validator: (value) =>
                                  controller.validNameLastName(value!),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .1 / 3,
                            ),
                            
                            MyTextForm(
                              onsaved: (value) {
                                controller.email = value;
                              },
                              validator: (value) =>
                                  controller.validateEmail(value!),
                              texthint: 'بريد إلكتروني',
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .1 / 3,
                            ),
                            MyTextForm(
                              onsaved: (value){
                                controller.password = value;
                              },
                              validator: (value) =>
                                  controller.validatePassword(value!),
                              texthint: "كلمة المرور",
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .1 / 3,
                            ),
                            OriginalButton(
                              bgColor: Colors.lightBlue,
                              onpressed: () {
                                controller.checkLogin();
                              },
                              text: 'إنشاء حساب',
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .1 / 3,
                            ),
                            ChooseToLogin(
                              ask: 'ان كان لديك حساب ؟',
                              btnTxt: 'دخول إلى الحساب   ',
                              onpressed: () => Get.back()
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
    ),);
  }
}
