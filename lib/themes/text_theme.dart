import 'package:flutter/material.dart';

class TextThemes{
  static TextTheme lightTextTheme = const TextTheme(
  displayMedium: TextStyle(
    fontFamily: 'Montserrat',
  color: Colors.black,
    fontSize: 20,
  ),
  headlineMedium: TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.black,
    fontSize: 20,
  ),
  bodySmall: TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.black,
    fontSize: 20,
  ),
  titleSmall: TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.black,
    fontSize: 20,
  ),
  );
  static TextTheme darkTextTheme =const TextTheme(
  displayMedium: TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.white,
    fontSize: 20,
  ),
  titleSmall: TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.white,
    fontSize: 20,
  )
  );

}