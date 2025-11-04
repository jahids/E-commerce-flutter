import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class UcircularContainer extends StatelessWidget {
  const UcircularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: UDeviceHelper.getScreenHeight(context) * 0.4,
      width: UDeviceHelper.getScreenWidth(context) * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: UColors.white.withValues(alpha: 0.1),
      ),
    );
  }
}
