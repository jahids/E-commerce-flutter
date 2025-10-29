import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class signinCreateAccButton extends StatelessWidget {
  const signinCreateAccButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UElevatedButton(onPressed: () {}, child: Text(UTexts.signIn)),
        SizedBox(height: USizes.spaceBtwItems / 2),
        UElevatedButton(onPressed: () {}, child: Text(UTexts.createAccount))
      ],
    );
  }
}
