import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:juno_store/auth/modal_sheet.dart';

import 'dimensions.dart';
class RegForm extends StatelessWidget {
  const RegForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  // Adjust the padding as needed
                  child: FaIcon(
                    FontAwesomeIcons.person,
                    color: Colors.white,
                  ),
                ),
                labelText: "Email",
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tvHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  // Adjust the padding as needed
                  child: FaIcon(
                    FontAwesomeIcons.pen,
                    color: Colors.white,
                  ),
                ),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: FaIcon(FontAwesomeIcons.eye),
                ),
              ),
            ),
            const SizedBox(height: tvHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPass.buildShowModalBottomSheet(context);
                },
                child: const Text("Forgot Password?"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("LOGIN"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
