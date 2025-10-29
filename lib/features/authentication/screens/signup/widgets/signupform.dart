import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class signupForm extends StatelessWidget {
  const signupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            SizedBox(width: USizes.spaceBtwInputFields / 2),
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
      ],
    );
  }
}
