import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'my_app.dart';

void main() {
  //native splash screen with delay 5 seconds
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  // Future.delayed(const Duration(seconds: 5), () {
  //   FlutterNativeSplash.remove();
  // });
}
