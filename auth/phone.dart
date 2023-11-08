import 'package:flutter/material.dart';
import 'package:juno_store/themes/dimensions.dart';
import 'package:juno_store/themes/header_widget.dart';
import 'package:juno_store/themes/images.dart';
class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tvHeight),
            child:Column(
              children: [
                const SizedBox(height: tvHeight*4,),
                const FormWidget(
                  title: "Reset Password", subTitle: "Enter Phone Number To Receive New Password", image: welIcon,crossAxisAlignment: CrossAxisAlignment.center,heightBetween: 30.0,),
                const SizedBox(height: tvHeight,),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "PHONE",
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(height: tvHeight -10,),
                      SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){
                      }, child: const Text("Reset Password")))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
