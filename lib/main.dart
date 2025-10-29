import 'package:ecommerce_app/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'my_app.dart';

void main() {
  //native splash screen with delay 5 seconds
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Get.put(OnboardingController());
  runApp(const MyApp());
  // Future.delayed(const Duration(seconds: 5), () {
  //   FlutterNativeSplash.remove();
  // });
}
