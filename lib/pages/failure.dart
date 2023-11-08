import 'package:flutter/material.dart';

class SignUpFailure {
  final String textMessage;

  const SignUpFailure([this.textMessage ="An Unknown error occurred "]);
  factory SignUpFailure.code(String code){
    switch(code){
      case "weak password":
        return const SignUpFailure("Please enter strong password");
      case "invalid email":
        return const SignUpFailure("Invalid email");
      case "email in use":
        return const SignUpFailure("Email is already in use");
      case "operation-not-allowed":
        return const SignUpFailure("Operation isn't allowed");
      case "user-disabled":
        return const SignUpFailure("Account is disabled.Contact support for assistance");
      default:
        return const SignUpFailure();
    }
  }
}