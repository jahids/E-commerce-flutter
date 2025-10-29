import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/loginDevider.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/thirdpartyLogin.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/signup_privacy_policy.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/signupform.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(USizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //header
            Text(UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwSections),
            //signup form
            signupForm(),

            SizedBox(height: USizes.spaceBtwInputFields),
            //privacy policy
            signup_privacy_policy(),

            SizedBox(height: USizes.spaceBtwItems / 2),
            //signup button
            UElevatedButton(
                onPressed: () {}, child: Text(UTexts.createAccount)),

            SizedBox(height: USizes.spaceBtwItems / 2),
            //devider line
            loginDevider(text: UTexts.orSignupWith),

            SizedBox(height: USizes.spaceBtwItems / 2),
            //signup with icons section
            thirdpartyLogin(),
          ],
        ),
      ),
    );
  }
}
