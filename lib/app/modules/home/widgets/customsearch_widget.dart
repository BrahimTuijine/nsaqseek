import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class CustomSearch extends StatelessWidget {
  final void Function(String)? onchange;
  final String? textHint;
  const CustomSearch({
    Key? key,
    required this.textHint, required this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Get.width * .1 / 2),
      padding: EdgeInsets.symmetric(horizontal: Get.width * .1 / 2),
      height: Get.height * 0.065,
      width: Get.width * .9,
      decoration: BoxDecoration(
        boxShadow: [Constants.kDefaultShadow],
        color: Colors.white,
      ),
      child: TextField(
        onChanged: onchange,
        textDirection: TextDirection.rtl,
        style: const TextStyle(color: Constants.grey),
        decoration: InputDecoration(
          filled: false,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: const Icon(
            Icons.search,
            color: Constants.grey,
          ),
          hintText: textHint,
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(
            color: Constants.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
