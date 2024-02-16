// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TextHeadingExtraLarge extends StatelessWidget {
  final String text;
  double size;
  Color color;
  FontWeight weight;

  TextHeadingExtraLarge({
    Key? key,
    required this.text,
    this.size = 20,
    this.weight = FontWeight.bold,
    this.color = Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
