import 'package:flutter/material.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/modules/demand/controllers/demand_controller.dart';
import 'package:nsaqseek/app/modules/demand/widgets/demand_input_form_field.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class Maanawi extends StatelessWidget {
  const Maanawi({
    Key? key,
    required this.controller,
    required this.size,
  }) : super(key: key);

  final DemandController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Form(
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
                    "التسمية الاجتماعية",
                    style: TextStyle(
                        color: Constants.blueGreen,
                        fontWeight: FontWeight.bold),
                  ),
                  DemandInputField(
                    texthint: 'التسمية الاجتماعية',
                    onsaved: (value) => controller.communityName = value,
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
                    onsaved: (value) => controller.communityplace = value,
                    validator: (value) => controller.validator(value!),
                    maxline: 1,
                    minline: 1,
                  ),
                  SizedBox(
                    height: size.height * .1 / 3,
                  ),
                  const Text(
                    "رقم الهاتف",
                    style: TextStyle(
                        color: Constants.blueGreen,
                        fontWeight: FontWeight.bold),
                  ),
                  DemandInputField(
                    texthint: '55555555',
                    onsaved: (value) => controller.communityphone = value,
                    maxline: 1,
                    minline: 1,
                  ),
                  SizedBox(
                    height: size.height * .1 / 3,
                  ),
                  const Text(
                    "الموضوع",
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
                    "المعلومة",
                    style: TextStyle(
                        color: Constants.blueGreen,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * .1 / 9,
                  ),
                  DemandInputField(
                    texthint: 'شنية لمعلومة ألي تحب تعرفها',
                    onsaved: (value) => controller.communityInformation = value,
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
    );
  }
}
