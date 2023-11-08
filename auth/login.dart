import 'package:flutter/material.dart';
import 'package:juno_store/themes/dimensions.dart';
import 'package:juno_store/themes/footer_widget.dart';
import 'package:juno_store/themes/images.dart';

import '../themes/forms.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tvHeight -20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: const AssetImage(welIcon),height: size.height *0.2,width: double.infinity,),
                Text("Welcome Back",style: Theme.of(context).textTheme.displayMedium,),
                Text("Sign In To Continue",style: Theme.of(context).textTheme.bodySmall,),

                const RegForm(),
                const FooterWidget(),
              ],
            ),
          )
        )
      ),
    );
  }
}


