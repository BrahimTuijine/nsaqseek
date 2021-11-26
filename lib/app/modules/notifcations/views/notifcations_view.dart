import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/demand/widgets/demand_app_bar.dart';
import 'package:nsaqseek/app/theme/constants.dart';

import '../controllers/notifcations_controller.dart';

class NotifcationsView extends GetView<NotifcationsController> {
  const NotifcationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: tabsAppBar(context, "الاشعارات", "إجابات البلدية", "مطالبك"),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: Constants.listOfRequestes.length,
              itemBuilder: (BuildContext context, int index) {
                final oneRequest = Constants.listOfRequestes[index];
                return ExpansionTile(
                  childrenPadding: const EdgeInsets.all(20.0),
                  collapsedTextColor: Constants.grey,
                  textColor: Constants.blueGreen,
                  collapsedIconColor: Constants.grey,
                  iconColor: Constants.blueGreen,
                  title: Text(
                    oneRequest.title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "مطلب في نفذ المعلومة",
                          style: TextStyle(
                            color: Constants.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              width: double.infinity,
              child: ListView.builder(
                itemCount: Constants.listOfRequestes.length,
                itemBuilder: (BuildContext context, int index) {
                  final oneRequest = Constants.listOfRequestes[index];
                  return ExpansionTile(
                    childrenPadding: const EdgeInsets.all(20.0),
                    collapsedTextColor: Constants.grey,
                    textColor: Constants.blueGreen,
                    collapsedIconColor: Constants.grey,
                    iconColor: Constants.blueGreen,
                    title: Text(
                      " الرد على " + oneRequest.title,
                      style: const TextStyle(fontWeight: FontWeight.w600),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
