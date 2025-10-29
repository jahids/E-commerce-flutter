import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/loginDevider.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/thirdpartyLogin.dart';
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
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: UTexts.firstName,
                      hintText: UTexts.firstName,
                    ),
                  ),
                ),
                SizedBox(width: USizes.spaceBtwItems),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: UTexts.lastName,
                      hintText: UTexts.lastName,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: USizes.spaceBtwInputFields),
            //email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: UTexts.email,
                hintText: UTexts.email,
              ),
            ),

            SizedBox(height: USizes.spaceBtwInputFields),
            //phone number
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: UTexts.phoneNumber,
              ),
            ),

            SizedBox(height: USizes.spaceBtwInputFields),
            //password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: UTexts.password,
                hintText: UTexts.password,
              ),
            ),

            SizedBox(height: USizes.spaceBtwInputFields),
            //privacy policy
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        text: '${UTexts.iAgreeTo} '),
                    TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            decoration: TextDecoration.underline,
                            color: UColors.primary),
                        text: ' ${UTexts.privacyPolicy} '),
                    TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        text: ' ${UTexts.and} '),
                    TextSpan(
                        text: UTexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            decoration: TextDecoration.underline,
                            color: UColors.primary)),
                  ],
                ))
              ],
            ),

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
