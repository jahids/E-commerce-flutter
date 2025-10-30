import 'package:ecommerce_app/features/authentication/screens/forgetPassword/forgetPassword.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class loginremembermeSection extends StatelessWidget {
  const loginremembermeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text(UTexts.rememberMe)
          ],
        ),

        //forget password
        TextButton(
            onPressed: () {
              Get.to(() => ForgetPasswordScreen());
            },
            child: Text(UTexts.forgetPassword)),
      ],
    );
  }
}
