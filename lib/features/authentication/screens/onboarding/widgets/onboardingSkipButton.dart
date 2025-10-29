import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(
            onPressed: () {
              print("Skip");
            },
            child: Text("Skip")));
  }
}
