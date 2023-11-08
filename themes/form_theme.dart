import 'package:flutter/material.dart';

class FormFieldTheme{
  FormFieldTheme._();

  static InputDecorationTheme lightInputDecorTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: Colors.black,
        floatingLabelStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.black),
        ),
      );

  static InputDecorationTheme darkInputDecorTheme =
  const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: Colors.white,
    floatingLabelStyle: TextStyle(color: Colors.white),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2,color: Colors.white),
    ),
  );
}