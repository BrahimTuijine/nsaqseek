import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/enddrawer_controller.dart';

class EnddrawerView extends GetView<EnddrawerController> {
  const EnddrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'المزيد',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(Icons.arrow_back_ios, color: Constants.grey),
                  InkWell(
                    onTap: () => {},
                    child: Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'بلديتي',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constants.grey),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image(
                            image: AssetImage("assets/images/iconCard1@3x.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1 / 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(Icons.arrow_back_ios, color: Constants.grey),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'مساعدة',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Constants.grey),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image(
                          image:
                              AssetImage("assets/images/CutomerSupport@3x.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1 / 8,
              ),
              const Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1 / 8,
              ),
              InkWell(
                onTap: () =>
                    Get.toNamed("/login"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Icon(Icons.arrow_back_ios, color: Constants.grey),
                    Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'خروج',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constants.grey),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image(
                            image: AssetImage("assets/images/login@3x.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
