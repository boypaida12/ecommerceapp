import 'package:ecommerceapp/onboarding_screens/splash_screen.dart';
import 'package:flutter/material.dart';

class StyleApp extends StatelessWidget {
  const StyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}