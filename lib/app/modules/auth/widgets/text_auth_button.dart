import 'package:flutter/material.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class ChooseToLogin extends StatelessWidget {
  final VoidCallback onpressed;
  final String ask;
  final String btnTxt;

  const ChooseToLogin({
    Key? key,
    required this.onpressed,
    required this.ask,
    required this.btnTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: <Widget>[
        Text(
          ask,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: onpressed,
          child: Text(
            btnTxt,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Constants.blueGreen,
            ),
          ),
        ),
      ],
    );
  }
}