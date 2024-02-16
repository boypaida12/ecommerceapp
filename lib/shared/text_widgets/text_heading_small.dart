// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TextHeadingSmall extends StatelessWidget {
  Color color;
  double size;
  final String text;
  FontWeight weight;
  
  TextHeadingSmall({
    Key? key,
    this.color = Colors.black54,
    this.size = 10,
    this.weight = FontWeight.bold,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
