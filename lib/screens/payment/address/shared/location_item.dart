// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/shared/text_widgets/text_body.dart';
import 'package:ecommerceapp/shared/text_widgets/text_heading_large.dart';
import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {
  final String suburbName;
  final String cityNameAndCountry;
  final String imageURL;

  const LocationItem({
    required this.suburbName,
    required this.cityNameAndCountry,
    required this.imageURL,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextHeadingLarge(text: suburbName),
      subtitle: TextBody(
        text: cityNameAndCountry,
        textAlign: TextAlign.start,
      ),
      trailing: CircleAvatar(
        backgroundImage: AssetImage(imageURL),
        radius: 28,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(32)),
        ),
      ),
    );
  }
}
