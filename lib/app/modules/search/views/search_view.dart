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
                      
                        // child: Container(
                        //   margin: const EdgeInsets.all(20.0),
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 20.0, vertical: 5),
                        //   height: size.height * 0.065,
                        //   width: size.width * .9,
                        //   decoration: BoxDecoration(
                        //     boxShadow: [Constants.kDefaultShadow],
                        //     color: Colors.white,
                        //   ),
                        //   child: TextField(
                        //     onChanged: (value) => controller.onSearch(value),
                        //     textDirection: TextDirection.rtl,
                        //     style: const TextStyle(color: Constants.grey),
                        //     decoration: const InputDecoration(
                        //       filled: false,
                        //       enabledBorder: InputBorder.none,
                        //       focusedBorder: InputBorder.none,
                        //       icon: Icon(
                        //         Icons.search,
                        //         color: Constants.grey,
                        //       ),
                        //       hintText: 'لوج بالعنوان',
                        //       hintTextDirection: TextDirection.rtl,
                        //       hintStyle: TextStyle(
                        //         color: Constants.grey,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        CustomSearch(onchange: (value) => controller.onSearch(value), textHint: 'لوج بالعنوان',)
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
                                  leading: const CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                        "assets/images/statusClosed@3x.png"),
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
                                      MediaQuery.of(context).size.height * .30),
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
