import 'package:ecommerce_app/features/authentication/screens/Home/home.dart';
import 'package:ecommerce_app/features/authentication/screens/forgetPassword/forgetPassword.dart';
import 'package:ecommerce_app/features/authentication/screens/forgetPassword/reset_password.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());

    final screens =
        Obx(() => navController.widgetList[navController.selectedIndex.value]);
    return Scaffold(
        body: screens,
        bottomNavigationBar: Obx(
          () => NavigationBar(
            elevation: 0,
            backgroundColor:
                navController.isDarkMode.value ? UColors.black : UColors.white,
            indicatorColor: navController.isDarkMode.value
                ? UColors.white.withValues(alpha: 0.1)
                : UColors.black.withValues(alpha: 0.1),
            selectedIndex: navController.selectedIndex.value,
            onDestinationSelected: (index) {
              navController.setSelectedIndex(index);
            },
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Search'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'profile'),
            ],
          ),
        ));
  }
}

class NavigationController extends GetxController {
  RxBool isDarkMode = UHelperFunctions.isDarkMode(Get.context!).obs;

  RxInt selectedIndex = 0.obs;
  RxList<Widget> widgetList = [
    HomeScreen(),
    SignupScreen(),
    ForgetPasswordScreen(),
    ResetPasswordScreen(),
  ].obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
