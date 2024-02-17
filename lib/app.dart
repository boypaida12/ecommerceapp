import 'package:ecommerceapp/screens/account/register_success_page.dart';
import 'package:ecommerceapp/screens/real%20onboarding%20screens/real_splash_screen.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RegisterSuccessPage(),
    );
  }
}
