import 'package:ecommerce_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: UPrimaryHeaderContainer(
            child: Container(),
            height: UDeviceHelper.getScreenHeight(context) * 0.4));
  }
}
