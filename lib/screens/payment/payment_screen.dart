// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/screens/payment/address_screen.dart';
import 'package:ecommerceapp/screens/payment/shared/custompaymentmethod.dart';
import 'package:ecommerceapp/screens/payment/shared/customroundedcontainer.dart';
import 'package:ecommerceapp/screens/payment/shared/product_rows.dart';
import 'package:ecommerceapp/screens/payment/shared/sectiontitle.dart';
import 'package:ecommerceapp/shared/custombottomsheet.dart';
import 'package:ecommerceapp/shared/custombutton.dart';
// import 'package:ecommerceapp/shared/custombottomsheet.dart';
// import 'package:ecommerceapp/shared/custombutton.dart';
import 'package:ecommerceapp/shared/customnavbar.dart';
import 'package:ecommerceapp/shared/text_widgets/text_body.dart';
import 'package:ecommerceapp/shared/text_widgets/text_heading_extra_large.dart';
import 'package:ecommerceapp/shared/text_widgets/text_heading_large.dart';
import 'package:ecommerceapp/shared/text_widgets/text_small.dart';
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
  BottomSheet? firstBottomSheet;
  bool? _isChecked = true;

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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SectionTitle(sectionTitle: 'Payment Method'),
                          CustomPaymentMethod(
                            bankCardImg: 'assets/images/map_img.png',
                            cardNumberorEmail: 'kab****@gmail.com',
                            cardProviderName: 'PayPal',
                            isChecked: false,
                            onChanged: (newValue) => setState(()=> _isChecked = newValue)
                          ),
                          CustomPaymentMethod(
                            bankCardImg: 'assets/images/map_img.png',
                            cardNumberorEmail: '**** *** **5632',
                            cardProviderName: 'Master Card',
                            isChecked: _isChecked,
                            onChanged: (newValue) => setState(()=> _isChecked = newValue!)
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                children: const [
                                  Icon(Icons.add_circle_outline_outlined),
                                  SizedBox(width: 16,),
                                  Text('Add Payment Method',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomButton(
                            buttonText: 'Confirm Payment', 
                            onPressed: (){
                              Navigator.pop(context);
                              showModalBottomSheet(
                                context: context, 
                                builder: (context) => CustomBottomSheet(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage("assets/images/order-successful.png",
                                        ),
                                        radius: 120,
                                      ),
                                      TextHeadingExtraLarge(text: 'Order Successful', size: 18,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                        child: TextBody(text: 'Your order will be packed by the clerk and will arrive at your home within the next 2-4 days'),
                                      ),
                                      CustomButton(
                                        buttonText: 'Track Order', 
                                        onPressed: (){},
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      onClosing: () => Navigator.pop(context),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
