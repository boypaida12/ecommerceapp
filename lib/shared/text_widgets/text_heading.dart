// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  Color color;
  double size;
  final String text;
  TextHeading({
    Key? key,
    this.color = Colors.black54,
    this.size = 14,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
