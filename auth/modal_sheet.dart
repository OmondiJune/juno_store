import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juno_store/auth/forgot_passkey.dart';
import 'package:juno_store/auth/mail.dart';
import 'package:juno_store/auth/phone.dart';

import '../themes/dimensions.dart';
//BOTTOM NAVIGATION BAR FOR THE MAIL AND PHONE NUMBER AUTHENTICATION
class ForgetPass{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      context: context,
      builder: (context)=>Container(
        padding: const EdgeInsets.all(tvHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Forgot Password?",style: Theme.of(context).textTheme.displayMedium,),
            Text("Don't worry We Gotchu,Select an Option To Reset Password",style: Theme.of(context).textTheme.displayMedium,),
            const SizedBox(height: 30,),
            ForgotPass(
              onTap: (){
                Navigator.pop(context);
                Get.to(() =>const MailScreen());
              },
              head: "Email",
              btnIcon: Icons.email_outlined,
              subHead: "Reset Using Email",
            ),
            const SizedBox(height: 20,),
            ForgotPass(
              onTap: (){
                Navigator.pop(context);
                Get.to(() =>const PhoneScreen());
              },
              head: "Phone Number",
              btnIcon: Icons.phone,
              subHead: "Reset Using Phone",
            ),
          ],
        ),
      ),
    );
  }
}
