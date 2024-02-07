import 'package:ecommerceapp/onboarding_screens/slider.dart';
import 'package:ecommerceapp/onboarding_screens/splash_screen.dart';
import 'package:flutter/material.dart';

class StyleApp extends StatelessWidget {
  const StyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: const IntroductorySliderPage(),
    );
  }
}