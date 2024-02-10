// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/screens/payment/address_screen.dart';
import 'package:ecommerceapp/shared/customnavbar.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavbar(
        title: 'Payment',
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Address',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.push(
                      // Use push for page-based navigation
                      context,
                      MaterialPageRoute(builder: (context) => AddressScreen()),
                    );
                  },
                  child: Text('Edit'),
                )
              ],
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/map_img.png',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 100,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
