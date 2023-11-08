import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:juno_store/auth/otp_controller.dart';
import 'package:juno_store/themes/dimensions.dart';
import 'package:juno_store/themes/text.dart';
class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController()) ;
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tvHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(otpHead,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Montserrat',fontSize: 80.0),),
            const SizedBox(height: 40,),
            Text(message,style: Theme.of(context).textTheme.displayMedium,),
            const SizedBox(height: 20,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                OTPController.instance.verifyOTP(otp);
              }, child: Text("Verify",style: Theme.of(context).textTheme.displayMedium,)),
            )
          ],
        ),
      ),
    );
  }
}
