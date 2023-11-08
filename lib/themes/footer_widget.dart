import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juno_store/auth/register.dart';
import 'package:juno_store/themes/dimensions.dart';
import 'package:juno_store/themes/images.dart';
class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("-OR-"),
        const SizedBox(height: tvHeight -20,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(googleIcon),width: 20,),
            onPressed: (){}, label: const Text("Sign In with Google"),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(appleIcon),width: 20,),
            onPressed: (){}, label: const Text("Sign In with Apple"),
          ),
        ),
        const SizedBox(height: tvHeight -20,),
        TextButton(onPressed: ()=> Get.to(()=> const SignUpPage()), child: Text.rich(
            TextSpan(
                text: "Don't Have An Account?",
                style: Theme.of(context).textTheme.displayMedium,
                children: const [
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(color: Colors.blueAccent),
                  )
                ]
            )
        ),
        ),
      ],
    );
  }
}