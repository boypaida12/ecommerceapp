import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 16.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Welcome\nBack!',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
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
                const Text(
                  'Forgot Password?',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFFF83758),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
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
                SizedBox(height: 20),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipOval(
                        child: Material(
                          shape: const CircleBorder(
                            side: BorderSide(
                              color: Color(0xFFF83758),
                            ),
                          ),

                          color: Color.fromRGBO(
                              252, 243, 246, 1.0), // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: const SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                )),
                            onTap: null,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
