import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Forgot\npassword?',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    hintText: 'Enter your email address',
                    hintStyle: const TextStyle(color: Color(0xFF626262)),
                    prefixIcon:
                        const Icon(Icons.email, color: Color(0xFF626262)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color(0xFFA8A8A9), width: 1.0),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    '*',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xFFF83758),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'We will send you a link to set or reset your\nnew password',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF83758),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}
