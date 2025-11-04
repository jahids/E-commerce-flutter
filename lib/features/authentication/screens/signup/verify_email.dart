import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/common/widgets/screens/success_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/forgetPassword/forgetPassword.dart';
import 'package:ecommerce_app/utils/constants/images.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //some padding
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: USizes.defaultSpace),
              onPressed: () {
                print('close button pressed');
                Get.offAll(() => ForgetPasswordScreen());
              },
              icon: Icon(Icons.close),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(USizes.defaultSpace),
          child: Column(children: [
            // SizedBox(height: USizes.spaceBtwSections),
            //images
            Image.asset(
              UImages.mailSent,
              height: UDeviceHelper.getScreenHeight(context) * 0.3,
              width: UDeviceHelper.getScreenWidth(context),
            ),
            SizedBox(height: USizes.spaceBtwInputFields),
            //maintaitle
            Text(UTexts.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwInputFields),
            //subtitle
            Text("verify@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USizes.spaceBtwInputFields),

            //some text
            Text(
              UTexts.verifyEmailSubTitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwInputFields * 2),
            //done button
            UElevatedButton(
                onPressed: () {
                  print('done button pressed');
                  Get.to(() => SuccessScreen(
                        title: UTexts.accountCreatedTitle,
                        subTitle: UTexts.accountCreatedSubTitle,
                        image: UImages.accountCreated,
                        buttonText: UTexts.uContinue,
                        onPressed: () {},
                      ));
                },
                child: Text(UTexts.uContinue)),
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
