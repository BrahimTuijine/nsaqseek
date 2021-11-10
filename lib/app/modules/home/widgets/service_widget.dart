import 'package:flutter/material.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class ServiceWidget extends StatelessWidget {
  final String image;
  final String txt;
  final VoidCallback ontab;
  final double hight;
  final double width;
  final double imgHight;
  final double imgWidth;
  const ServiceWidget(
      {Key? key,
      required this.image,
      required this.txt,
      required this.ontab,
      required this.hight,
      required this.width,
      required this.imgHight,
      required this.imgWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: ontab,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, boxShadow: [Constants.kDefaultShadow]),
        height: hight,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: imgHight,
                width: imgWidth,
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