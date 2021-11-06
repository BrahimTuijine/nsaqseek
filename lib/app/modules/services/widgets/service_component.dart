import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class ServiceComponent extends StatelessWidget {
  final String image;
  final String txt;
  final String page;
  const ServiceComponent(
      {Key? key,
      required this.image,
      required this.txt,
      required this.page
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: ()=> Get.toNamed(page),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, boxShadow: [Constants.kDefaultShadow]),
        height: size.height * .18,
        width: size.width * .4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height:  size.height * .1,
                width: size.width * .2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * .1 / 5,
            ),
            Text(
              txt,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}