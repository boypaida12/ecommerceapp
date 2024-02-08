import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: ListView(
        children: const [
           SizedBox(
                  height: 50,
                ),
                Text(
                  'Forgot\password?',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none),
                ),
                 const SizedBox(height: 20),
        ]

      )
    );
  }
}