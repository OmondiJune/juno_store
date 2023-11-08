import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juno_store/auth/login.dart';
import 'package:juno_store/auth/otp.dart';
import 'package:juno_store/auth/signup_controller.dart';
import 'package:juno_store/themes/dimensions.dart';
import 'package:juno_store/themes/header_widget.dart';
import 'package:juno_store/themes/images.dart';
import 'package:juno_store/themes/text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    final _formKey =GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defSize),
            child: Column(
              children: [
                const FormWidget(
                    image: welIcon,
                    title: heading,
                    subTitle: subHeading,
                crossAxisAlignment: CrossAxisAlignment.start,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: tvHeight -10),
                  child: Form(
                    key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: controller.name,
                           decoration: const InputDecoration(
                             labelText: "Name",
                             prefixIcon: Icon(Icons.person),
                           ),
                            ),
                          const SizedBox(height: tvHeight -20,),
                          TextFormField(
                            controller: controller.email,
                            decoration: const InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          const SizedBox(height: tvHeight -20,),
                          TextFormField(
                            controller: controller.phoneNumber,
                            decoration: const InputDecoration(
                              labelText: "Phone",
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                          const SizedBox(height: tvHeight -20,),
                          TextFormField(
                            controller: controller.password,
                            decoration: const InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.fingerprint_rounded),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if(_formKey.currentState!.validate()){
                                  RegisterController.instance.registerPerson(
                                  controller.email.text.trim(),controller.password.text.trim());
                                  RegisterController.instance.phoneAuthentication(controller.phoneNumber.text.trim());
                                  Get.to(()=> const OTPPage());
                                }
                              },
                              child: const Text("REGISTER"),
                            ),
                          ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("OR"),
                      const SizedBox(height: tvHeight -20,),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          icon: const Image(image: AssetImage(googleIcon),width: 20,),
                          onPressed: (){}, label: const Text("Sign Up with Google"),
                        ),
                      ),
                      const SizedBox(height: tvHeight -20,),
                      TextButton(onPressed: ()=> Get.to(()=> const LoginScreen()), child: Text.rich(
                          TextSpan(
                              text: "Have An Account?",
                              style: Theme.of(context).textTheme.displayMedium,
                              children: const [
                                TextSpan(
                                  text: "Sign In",
                                  style: TextStyle(color: Colors.blueAccent),
                                )
                              ]
                          )
                      ),
                      ),
                    ],
                  ),
                        ],
                      ),
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
