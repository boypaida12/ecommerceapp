import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
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
                    borderSide:
                        const BorderSide(color: Color(0xFFA8A8A9), width: 1.0),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(
              height: 20,
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
                  prefixIcon: const Icon(Icons.lock, color: Color(0xFF626262)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Color(0xFFA8A8A9), width: 1.0),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: 'Confirm Password',
                  suffixIcon: const Icon(Icons.visibility_off,
                      color: Color(0xFF626262)),
                  hintStyle: const TextStyle(color: Color(0xFF626262)),
                  prefixIcon: const Icon(Icons.lock, color: Color(0xFF626262)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Color(0xFFA8A8A9), width: 1.0),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'By clicking the Register button, you agree to the public offer',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Create Account',
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
            const SizedBox(height: 30),
            const Text(
              '- OR Continue with -',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color.fromRGBO(87, 87, 87, 1.0),
                  fontSize: 12),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Material(
                      shape: const CircleBorder(
                        side: BorderSide(
                          color: Color(0xFFF83758),
                        ),
                      ),

                      color: Colors.grey.shade200, // button color
                      child: const InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                              ),
                            )),
                        onTap: null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipOval(
                    child: Material(
                      shape: const CircleBorder(
                        side: BorderSide(
                          color: Color(0xFFF83758),
                        ),
                      ),

                      color: Colors.grey.shade200, // button color
                      child: const InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.apple,
                                color: Colors.black,
                              ),
                            )),
                        onTap: null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipOval(
                    child: Material(
                      shape: const CircleBorder(
                        side: BorderSide(
                          color: Color(0xFFF83758),
                        ),
                      ),

                      color: Colors.grey.shade200, // button color
                      child: const InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.indigo,
                              ),
                            )),
                        onTap: null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('I Already have an Account',
                    style: TextStyle(
                        fontFamily: 'Montserrat', color: Colors.black)),
                Text('Login',
                    style: TextStyle(
                        color: Color(0xFFF83758),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFF83758)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
