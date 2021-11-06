import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nsaqseek/app/theme/constants.dart';

AppBar tabsAppBar(context, title, tabOne, tabTwo) {
  return AppBar(
    bottom: TabBar(
        indicatorPadding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .1),
        indicatorColor: Constants.blueGreen,
        labelColor: Constants.blueGreen,
        unselectedLabelColor: Constants.grey,
        tabs: [
          Tab(
            child: Text(
              tabTwo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Tab(
            child: Text(
              tabOne,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
    title: Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
    ),
    centerTitle: true,
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
  );
}