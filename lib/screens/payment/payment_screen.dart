// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/screens/payment/address_screen.dart';
// import 'package:ecommerceapp/shared/custombottomsheet.dart';
// import 'package:ecommerceapp/shared/custombutton.dart';
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
                    fontSize: 20,
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
                ),
                SizedBox(
                  width: 16,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'House',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '5482 Adobe Falls Rd #15 San Diego Carlifonia(CA) 92120, USA',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14.75,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  'Products(3)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(color: Colors.red),
              // height: MediaQuery.of(context).size.height *.35,
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/map_img.png',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Big Bag Limited Edition 229',
                            style: TextStyle(
                              fontSize: 16.75,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Color:',
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              TextSpan(
                                text: 'Brown',
                                style: TextStyle(color: Colors.black),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(r"$67.00"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
