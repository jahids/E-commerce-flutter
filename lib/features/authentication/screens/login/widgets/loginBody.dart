import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:ecommerce_app/utils/theme/widgets_theme/text_field_theme.dart';

class loginBody extends StatelessWidget {
  const loginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
            hintText: UTexts.email,
          ),
        ),

        SizedBox(height: USizes.spaceBtwInputFields),
        //password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            hintText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),
      ],
    );
  }
}
