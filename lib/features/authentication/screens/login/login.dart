import 'package:ecommerce_app/features/authentication/screens/login/widgets/loginBody.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/loginDevider.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/loginHeader.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/loginRememberSection.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/signinCreateAccButton.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/thirdpartyLogin.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //header
              loginHeader(),

              SizedBox(height: USizes.spaceBtwSections),
              //body
              loginBody(),

              //remember me and forget password section
              loginremembermeSection(),

              SizedBox(height: USizes.spaceBtwInputFields / 2),

              //sign in & create Accout button
              signinCreateAccButton(),
              SizedBox(height: USizes.spaceBtwItems),
              // devider
              loginDevider(),
              SizedBox(height: USizes.spaceBtwItems / 2),
              //sign in with icons section
              thirdpartyLogin(),
            ],
          )),
    );
  }
}
