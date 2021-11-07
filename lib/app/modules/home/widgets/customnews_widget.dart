import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class CustomNews extends StatelessWidget {
  const CustomNews({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      
      padding: EdgeInsets.all(Get.width * .1 / 3 ),
      decoration: BoxDecoration(
          color: Colors.white, boxShadow: [Constants.kDefaultShadow]),
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:const  [
              Text(
                "العالية في 02 أكتوبر",
                style: TextStyle(
                    color: Color(0xff7F7F7F), fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.description,
                size: 20,
                color: Color(0xff7F7F7F),
              ),
            ],
          ),
          SizedBox(
            height: Get.width * .01,
          ),
          const Text(
            "جانب من مداخلة السيدة اسلام الزيدان حول دور المرأة في الاسرة العصرية وعيادة طب أسنان",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            textAlign: TextAlign.end,
          ),
          const Text(
            'تبع لخبر',
            style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 1.8,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              color: Color(0xFF01706E),
            ),
          )
        ],
      ),
    );
  }
}