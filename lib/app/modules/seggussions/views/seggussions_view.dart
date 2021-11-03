import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/seggussions_controller.dart';

class SeggussionsView extends GetView<SeggussionsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SeggussionsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SeggussionsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
