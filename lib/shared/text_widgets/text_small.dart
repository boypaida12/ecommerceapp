// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TextSmall extends StatelessWidget {
  Color color;
  double size;
  final String text;
  FontWeight weight;
  TextAlign textAlign;
  
  TextSmall({
    super.key,
    this.color = Colors.black54,
    this.size = 10,
    this.weight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
      textAlign: textAlign,
    );
  }
}
