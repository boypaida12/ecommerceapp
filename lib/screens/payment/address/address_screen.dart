// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/screens/payment/address/shared/location_item.dart';
import 'package:ecommerceapp/screens/payment/shared/customroundedcontainer.dart';
import 'package:ecommerceapp/screens/payment/shared/sectiontitle.dart';
import 'package:ecommerceapp/shared/custombutton.dart';
import 'package:ecommerceapp/shared/customnavbar.dart';
import 'package:ecommerceapp/shared/text_widgets/text_body.dart';
import 'package:ecommerceapp/shared/text_widgets/text_heading_large.dart';
import 'package:flutter/material.dart';

const locationdetails = [
  {
    'suburbName': 'Dansoman',
    'cityNameAndCountry': 'Accra, Ghana',
    'imageURL': 'assets/images/map_img.png',
  },
  {
    'suburbName': 'Lagos',
    'cityNameAndCountry': 'Lagos State, Nigeria',
    'imageURL': 'assets/images/map_img.png',
  },
  {
    'suburbName': 'Nyekonakpoe',
    'cityNameAndCountry': 'Lome, Togo',
    'imageURL': 'assets/images/map_img.png',
  },
  // ... more objects
];

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomNavbar(
        title: 'Address',
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: MediaQuery.of(context).size.height * .8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle(sectionTitle: 'Choose your location'),
                        TextBody(
                          text:
                              "Let's make it easy for you. Choose a location below to get started",
                          textAlign: TextAlign.start,
                          size: 14,
                        ),
                        CustomRoundedContainer(
                          child: ListTile(
                            leading: Icon(
                              Icons.location_on_outlined,
                              size: 32,
                            ),
                            title: TextHeadingLarge(text: 'San Diego, CA'),
                            trailing: Icon(Icons.location_searching),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 48,
                            child:
                                SectionTitle(sectionTitle: 'Select Location')),
                        Flexible(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: locationdetails.map((locationdetail) {
                              return CustomRoundedContainer(
                                  child: LocationItem(
                                suburbName: locationdetail['suburbName']!,
                                cityNameAndCountry:
                                    locationdetail['cityNameAndCountry']!,
                                imageURL: locationdetail['imageURL']!,
                              ));
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Flexible(
                child: CustomButton(buttonText: 'Confirm', onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
