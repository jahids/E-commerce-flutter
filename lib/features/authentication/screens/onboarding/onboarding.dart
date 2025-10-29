//onboarding screen
import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/Onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboardingNavigations.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboardingNextBtn.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboardingSkipButton.dart';
import 'package:ecommerce_app/utils/constants/images.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(USizes.defaultSpace),
      child: Stack(
        children: [
          PageView(
            controller: OnboardingController.to.pageController,
            onPageChanged: (index) =>
                OnboardingController.to.updateCurrentIndex(index),
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

          //indicator

          onboardingDotsNavigation(),

          //bottom button

          OnboardingNextButton(),

          //skip button
          OnboardingSkipButton()
        ],
      ),
    ));
  }
}
