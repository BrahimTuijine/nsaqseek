import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/services_controller.dart';

class ServicesView extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ServicesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ServicesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
