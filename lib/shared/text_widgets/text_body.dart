// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;
  double size;
  Color color;
  TextBody({
    Key? key,
    required this.text,
    this.size = 12,
    this.color = Colors.black45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
