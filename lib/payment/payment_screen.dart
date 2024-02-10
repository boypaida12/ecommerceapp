// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/payment/address_screen.dart';
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
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              child: Text('Edit'))
        ]),
      ),
    );
  }
}
