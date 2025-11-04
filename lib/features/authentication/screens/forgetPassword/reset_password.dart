import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/features/authentication/screens/forgetPassword/forgetPassword.dart';
import 'package:ecommerce_app/utils/constants/images.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Get.offAll(() => ForgetPasswordScreen());
              },
              icon: Icon(Icons.close),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(USizes.defaultSpace),
          child: Column(children: [
            // SizedBox(height: USizes.spaceBtwSections),
            //images
            Image.asset(
              UImages.mailSent,
              height: UDeviceHelper.getScreenHeight(context) * 0.4,
              width: UDeviceHelper.getScreenWidth(context),
            ),
            SizedBox(height: USizes.spaceBtwInputFields),
            //maintaitle
            Text(UTexts.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            //subtitle
            Text("sample@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USizes.spaceBtwInputFields),

            //some text
            Text(
              UTexts.resetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwInputFields),
            //done button
            UElevatedButton(
                onPressed: () {
                  print('done button pressed');
                },
                child: Text(UTexts.done)),
            //resend email button
            SizedBox(
                width: double.infinity,
                child: TextButton(
                  //text center

                  onPressed: () {
                    print('Resend email');
                  },
                  child: Text(UTexts.resendEmail),
                ))
          ]),
        ));
  }
}
