import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Row(children: [
        Image.asset('assets/images/styleLogo.png',
            fit: BoxFit.contain, height: 32),
        Text('Stylish')
      ]),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/avatar.jpg'),
        )
      ],
    ));
  }
}
