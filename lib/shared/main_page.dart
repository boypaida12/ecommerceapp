// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerceapp/screens/favorite/favorite_page.dart';
import 'package:ecommerceapp/screens/home/home_page.dart';
import 'package:ecommerceapp/screens/order/my_order_page.dart';
import 'package:ecommerceapp/screens/profile/my_profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  List pages = [
    HomePage(),
    MyOrderPage(),
    FavoritePage(),
    MyProfilePage()
  ];
 
  int _selectedIndex = 0;

  navigateBar(index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
        height: 70,

        child: BottomNavigationBar(
          onTap: navigateBar,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.deepPurple[900],
          unselectedItemColor: Colors.grey,
          enableFeedback: false,
          selectedFontSize:12 ,
          unselectedFontSize: 12,
          elevation: 5,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fire_truck_outlined),
              label: "My Order"
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Favorite"
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "My Profile"
              ),
          ]),
      ),
      body: pages[_selectedIndex],
    );
  }
}