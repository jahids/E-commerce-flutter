import 'package:ecommerce_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: UDeviceHelper.getScreenHeight(context) * 0.4,
          width: UDeviceHelper.getScreenWidth(context),
          color: UColors.primary,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -160,
                child: UcircularContainer(),
              ),
              Positioned(
                top: 50,
                right: -250,
                child: UcircularContainer(),
              ),
            ],
          )),
    );
  }
}
