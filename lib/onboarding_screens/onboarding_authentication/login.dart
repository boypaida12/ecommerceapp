import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(children: [
          Text(
            'Welcome\nBack!',
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          )
        ]));
  }
}
