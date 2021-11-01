import 'package:flutter/material.dart';
import 'package:nsaqseek/app/theme/constants.dart';


final ThemeData appThemeData = ThemeData(
  // fontFamily: GoogleFonts.tajawal().fontFamily,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(Constants.blueGreen),
      ),
    ),  
);