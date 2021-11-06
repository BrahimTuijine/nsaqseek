import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/enddrawer/views/enddrawer_view.dart';
import 'package:nsaqseek/app/modules/services/widgets/service_component.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/services_controller.dart';

class ServicesView extends GetView<ServicesController> {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        endDrawer: const EnddrawerView(),
        appBar: AppBar(
          title: const Text(
            'الخدمات',
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
            width: size.width,
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: size.height * .05,
                        decoration: BoxDecoration(
                          gradient: Constants.gradient,
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * .05,
                      child: SizedBox(
                        height: 50,
                        width: size.width,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.all(20.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5),
                        height: size.height * 0.065,
                        width: size.width * .9,
                        decoration: BoxDecoration(
                          boxShadow: [Constants.kDefaultShadow],
                          color: Colors.white,
                        ),
                        child: TextField(
                          onChanged: (value) => controller.onSearch(value),
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(color: Constants.grey),
                          decoration: const InputDecoration(
                            filled: false,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: Constants.grey,
                            ),
                            hintText: 'لوج بنوع السرفيس',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: TextStyle(
                              color: Constants.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .1 / 3,
                ),
                GetBuilder<ServicesController>(
                  init: ServicesController(),
                  initState: (_) {},
                  builder: (_) {
                    return Container(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 19),
                      height: MediaQuery.of(context).size.height,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 30,
                          crossAxisSpacing: 30,
                        ),
                        itemCount: controller.foundedService.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ServiceComponent(
                            image: controller.foundedService[index].image,
                            txt: controller.foundedService[index].text,
                            page: controller.foundedService[index].page,
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
