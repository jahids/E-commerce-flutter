import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/images.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

class thirdpartyLogin extends StatelessWidget {
  const thirdpartyLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(UImages.googleIcon,
                  width: USizes.iconMd, height: USizes.iconMd)),
        ),
        SizedBox(width: USizes.spaceBtwItems / 2),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(UImages.facebookIcon,
                  width: USizes.iconMd, height: USizes.iconMd)),
        )
      ],
    );
  }
}
