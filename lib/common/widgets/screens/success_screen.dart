import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/features/authentication/screens/forgetPassword/forgetPassword.dart';
import 'package:ecommerce_app/utils/constants/images.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final String buttonText;
  final VoidCallback onPressed;
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //some padding
        appBar: AppBar(automaticallyImplyLeading: false),
        body: Padding(
          padding: EdgeInsets.all(USizes.defaultSpace),
          child: Column(children: [
            // SizedBox(height: USizes.spaceBtwSections),
            //images
            Image.asset(
              image,
              height: UDeviceHelper.getScreenHeight(context) * 0.3,
              width: UDeviceHelper.getScreenWidth(context),
            ),
            SizedBox(height: USizes.spaceBtwInputFields),
            //maintaitle
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwInputFields),

            //some text
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwInputFields * 3),
            //done button
            UElevatedButton(
                onPressed: () {
                  onPressed();
                },
                child: Text(buttonText)),
          ]),
        ));
  }
}
