import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {

  final Widget child;

  const CustomRoundedContainer({
    required this.child,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: const Color.fromARGB(128, 158, 158, 158)),
          borderRadius: BorderRadius.circular(12)),
      child: child,
    );
  }
}
