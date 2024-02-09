import 'package:ecommerceapp/onboarding_screens/getStarted/getting_started.dart';
import 'package:ecommerceapp/onboarding_screens/onboarding_authentication/login.dart';


import 'package:flutter/material.dart';

class StyleApp extends StatelessWidget {
  const StyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     
      home:  GettingStartedScreen(),
    );
  }
}