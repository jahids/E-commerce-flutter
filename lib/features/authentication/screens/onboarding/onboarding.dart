//onboarding screen
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/Onboarding_page.dart';
import 'package:ecommerce_app/utils/constants/images.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              //wrap padding
              onboardingScreen(
                  animation: UImages.animationOnboarding1,
                  title: UTexts.onBoardingTitle1,
                  subTitle: UTexts.onBoardingSubTitle1),
              onboardingScreen(
                  animation: UImages.animationOnboarding2,
                  title: UTexts.onBoardingTitle2,
                  subTitle: UTexts.onBoardingSubTitle2),
              onboardingScreen(
                  animation: UImages.animationOnboarding3,
                  title: UTexts.onBoardingTitle3,
                  subTitle: UTexts.onBoardingSubTitle3),

              // Lottie.asset(UImages.animationOnboarding2),
              // Lottie.asset(UImages.animationOnboarding3),
            ],
          ),
        ],
      ),
    );
  }
}
