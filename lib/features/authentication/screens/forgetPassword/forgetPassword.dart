import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(
            left: USizes.defaultSpace,
            right: USizes.defaultSpace,
            top: USizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(UTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(UTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodySmall),

            SizedBox(height: USizes.spaceBtwSections * 2),

            //email input field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: UTexts.email,
                hintText: UTexts.email,
                //type email
              ),
            ),

            SizedBox(height: USizes.spaceBtwInputFields),

            //submit button
            UElevatedButton(
                onPressed: () {
                  print('submit button pressed');
                },
                child: Text(UTexts.submit)),
          ],
        ),
      ),
    );
  }
}
