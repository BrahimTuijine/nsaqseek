import 'package:flutter/material.dart';

class Constants {
  static const Color blueGreen = Color(0xFF01706E);
  static const Color lightGreen = Color(0xFF469658);
  static const Color grey = Color(0xff7F7F7F);

  static BoxShadow kDefaultShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  );

  static LinearGradient gradient =
      const LinearGradient(colors: [Constants.blueGreen, Constants.lightGreen]);

  static String endpoint = "http://192.168.1.8:8000/";
}
