import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class OnboardingController extends GetxController {
  // singleton
  static OnboardingController get to => Get.find();

  // variables

//current index
  RxInt currentIndex = 0.obs;

//page controller
  PageController pageController = PageController();

//operations

//update current index when page scroll
  void updateCurrentIndex(int index) {
    //print the index
    print('page index: $index');
    currentIndex.value = index;
  }

//jump to specific dot page selected
  void dotNavigationClicked(int index) {
    print('dot index: $index');
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

// next page action
  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(() => LoginScreen());
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

// skip page action
  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
