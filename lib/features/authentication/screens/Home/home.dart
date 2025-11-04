import 'package:ecommerce_app/common/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/cart/cart_counter_icon.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/texts.dart';
import 'package:ecommerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UPrimaryHeaderContainer(
          height: UDeviceHelper.getScreenHeight(context) * 0.4,
          child: Column(
            children: [
              UAppBar(
                showBackArrow: false,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(UTexts.homeAppBarTitle,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: UColors.grey)),
                    Text(UTexts.homeAppBarSubTitle,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .apply(color: UColors.grey)),
                  ],
                ),
                actions: const [UCartCounterIcon()],
              ),
            ],
          )),
    );
  }
}
