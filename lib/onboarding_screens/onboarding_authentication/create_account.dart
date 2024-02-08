import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Create an\account',
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none),
          ),

          const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: 'Username or Email',
                      hintStyle: const TextStyle(color: Color(0xFF626262)),
                      prefixIcon:
                          const Icon(Icons.person, color: Color(0xFF626262)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xFFA8A8A9), width: 1.0),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),

                 const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      hintText: 'Password',
                      suffixIcon: const Icon(Icons.visibility_off,
                          color: Color(0xFF626262)),
                      hintStyle: const TextStyle(color: Color(0xFF626262)),
                      prefixIcon:
                          const Icon(Icons.lock, color: Color(0xFF626262)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xFFA8A8A9), width: 1.0),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
        ],
      ),
    );
  }
}
