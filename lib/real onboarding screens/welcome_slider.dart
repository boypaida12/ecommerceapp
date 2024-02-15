import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

 final _pageController = PageController();
  int _currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(14.0),
          child: SafeArea(
            child:  Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      }); 
                    },
                    
                  )
                )
                
              ],
            ),
          ),
        ),
      )
    );
  }
}