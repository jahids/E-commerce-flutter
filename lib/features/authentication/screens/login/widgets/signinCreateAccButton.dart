import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class signinCreateAccButton extends StatelessWidget {
  const signinCreateAccButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UElevatedButton(
            onPressed: () {
              print('sign in button pressed');
              Get.to(() => NavigationMenu());
            },
            child: Text(UTexts.signIn)),
        SizedBox(height: USizes.spaceBtwItems / 2),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {
                Get.to(() => SignupScreen());
              },
              child: Text(UTexts.createAccount)),
        )
      ],
    );
  }
}
