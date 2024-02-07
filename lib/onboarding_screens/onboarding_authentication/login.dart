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
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: ListView(children: const [
            SizedBox(
              height: 50,
            ),
            Text(
              'Welcome\nBack!',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            

          ],),
        ));
  }
}
