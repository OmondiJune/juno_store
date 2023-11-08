import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juno_store/auth/auth_rep.dart';

class RegisterController extends GetxController{
  static RegisterController get instance => Get.find();

  final email = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();

  void registerPerson (String email,String password){
  AuthRepo.instance.createUserWithEmailAndPassword(email, password);
  }
  void phoneAuthentication(String phoneNumber){
    AuthRepo.instance.phoneAuthentication(phoneNumber);
  }
}