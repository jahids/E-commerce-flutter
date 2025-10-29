import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingDotsNavigation extends StatelessWidget {
  const onboardingDotsNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: UDeviceHelper.getBottomNavigationBarHeight() * 5,
        left: UDeviceHelper.getScreenWidth(context) / 3,
        right: UDeviceHelper.getScreenWidth(context) / 3,
        child: SmoothPageIndicator(
            controller: PageController(), // PageController
            count: 3,
            effect:
                ExpandingDotsEffect(dotHeight: 6.0), // your preferred effect
            onDotClicked: (index) {
              print('index: $index');
            }));
  }
}
