import 'package:flutter/material.dart';

class RealSplashScreen extends StatefulWidget {
  const RealSplashScreen({super.key});

  @override
  State<RealSplashScreen> createState() => _RealSplashScreenState();
}

class _RealSplashScreenState extends State<RealSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF514EB6),
      ),
      child: const Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Kutuku",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.none,
                        fontSize: 30.0)),
                SizedBox(height: 10.0),
                Text(
                  "Any shopping just from home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Positioned(
            left: 150,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32.0),
              child: Text(
                "Version 0.01",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none),
              ),
            ),
          )
        ],
      ),
    );
  }
}
