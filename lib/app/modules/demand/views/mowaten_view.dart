
import 'package:flutter/material.dart';
import 'package:nsaqseek/app/modules/auth/widgets/elevated_auth_button.dart';
import 'package:nsaqseek/app/modules/demand/controllers/demand_controller.dart';
import 'package:nsaqseek/app/modules/demand/widgets/demand_input_form_field.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class Mowaten extends StatelessWidget {
  const Mowaten({
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
    );
  }
}
