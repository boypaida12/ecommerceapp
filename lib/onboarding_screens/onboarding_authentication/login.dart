import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: ListView(
              children: const [
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
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Username or Email',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
