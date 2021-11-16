import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/enddrawer/views/enddrawer_view.dart';
import 'package:nsaqseek/app/modules/home/widgets/customsearch_widget.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        endDrawer: const EnddrawerView(),
        appBar: AppBar(
          title: const Text(
            'البحث في إجابات المطالب',
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
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed("notification"),
            icon: const Icon(Icons.notifications_outlined),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () => Focus.of(context).unfocus(),
                  child: Stack(
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
                      CustomSearch(
                        onchange: (value) => controller.onSearch(value),
                        textHint: 'لوج بالعنوان',
                      ),
                    ],
                  ),
                ),
                GetBuilder<SearchController>(
                  init: SearchController(),
                  initState: (_) {},
                  builder: (_) {
                    return Expanded(
                      child: controller.foundedResponse.isNotEmpty
                          ? ListView.builder(
                              itemCount: controller.foundedResponse.length,
                              itemBuilder: (BuildContext context, int index) {
                                final oneRequest =
                                    controller.foundedResponse[index];
                                return ExpansionTile(
                                  childrenPadding: const EdgeInsets.all(20.0),
                                  collapsedTextColor: Constants.grey,
                                  textColor: Constants.blueGreen,
                                  collapsedIconColor: Constants.grey,
                                  iconColor: Constants.blueGreen,
                                  title: Text(
                                    " الرد على " + oneRequest.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "العالية في ${oneRequest.date}",
                                          style: const TextStyle(
                                            color: Constants.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        oneRequest.content,
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                );
                              },
                            )
                          : Container(
                              margin: EdgeInsets.only(
                                  top:
                                      Get.height * .30),
                              child: const Text(
                                'مافماش إجابة على مطلب كيف هكا ',
                                style: TextStyle(
                                    color: Constants.blueGreen, fontSize: 20),
                              ),
                            ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
