// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TextHeadingLarge extends StatelessWidget {
  final String text;
  double size;
  Color color;
  FontWeight weight;

  TextHeadingLarge({
    Key? key,
    required this.text,
    this.size = 16,
    this.weight = FontWeight.bold,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight
      ),
    );
  }
}
