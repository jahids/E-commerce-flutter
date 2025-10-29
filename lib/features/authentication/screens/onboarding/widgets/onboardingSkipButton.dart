import 'package:ecommerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => OnboardingController.to.currentIndex.value == 2
        ? SizedBox.shrink()
        : Positioned(
            top: UDeviceHelper.getAppBarHeight(),
            right: 0,
            child: TextButton(
                onPressed: () {
                  OnboardingController.to.skipPage();
                },
                child: Text("Skip"))));
  }
}
