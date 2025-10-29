import 'package:ecommerce_app/common/widgets/button/elevated_button.dart';
import 'package:ecommerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        bottom: USizes.spaceBtwItems,
        child: UElevatedButton(
          onPressed: () {
            OnboardingController.to.nextPage();
          },
          child: Obx(() => Text(OnboardingController.to.currentIndex.value == 2
              ? "Get Started"
              : "Next")),
        ));
  }
}
