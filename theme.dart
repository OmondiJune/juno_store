import 'package:flutter/material.dart';
import 'package:juno_store/themes/form_theme.dart';
import 'package:juno_store/themes/text_theme.dart';
class AppThemes {
  AppThemes._();
//LIGHT MODE
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextThemes.lightTextTheme,
    inputDecorationTheme: FormFieldTheme.lightInputDecorTheme,
  );
//DARK MODE
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF000100), // Use #352F44 as primary color
    scaffoldBackgroundColor: const Color(0xFF000100),
    inputDecorationTheme: FormFieldTheme.darkInputDecorTheme,// Use #352F44 as background color
    textTheme: TextThemes.darkTextTheme,
  );
}
