// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/screens/payment/address_screen.dart';
import 'package:ecommerceapp/screens/payment/shared/customroundedcontainer.dart';
import 'package:ecommerceapp/screens/payment/shared/product_rows.dart';
import 'package:ecommerceapp/screens/payment/shared/sectiontitle.dart';
import 'package:ecommerceapp/shared/custombottomsheet.dart';
import 'package:ecommerceapp/shared/custombutton.dart';
// import 'package:ecommerceapp/shared/custombottomsheet.dart';
// import 'package:ecommerceapp/shared/custombutton.dart';
import 'package:ecommerceapp/shared/customnavbar.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  final double totalPrice = 99;

  const PaymentScreen({
    super.key,
  });

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
            SectionTitle(
              sectionTitle: 'Address',
              textButtonText: 'Edit',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddressScreen())),
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
            SectionTitle(sectionTitle: 'Products(3)'),
            ProductRow(
              productTitle: 'Big Bag Limited Edition 229',
              productImage: 'assets/images/map_img.png',
              price: 67.00,
              color: 'color',
            ),
            SectionTitle(sectionTitle: 'Payment Method'),
            CustomRoundedContainer(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/map_img.png',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  'Master Card',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '**** *** **5632',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,
                    color: Color.fromARGB(128, 158, 158, 158)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total amount',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '\$${widget.totalPrice}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            CustomButton(
                buttonText: 'Checkout Now',
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => CustomBottomSheet(
                          child:
                              Column() //can change Column to any widget depending on your screen's use case
                          ));
                }),
          ],
        ),
      ),
    );
  }
}
