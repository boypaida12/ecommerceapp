import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String sectionTitle;
  final String? textButtonText; // Make textButtonText optional
  final String? routeName; // Store route dynamically
  final void Function()? onPressed; // Optional onPressed callback

  const SectionTitle({
    super.key,
    required this.sectionTitle,
    this.textButtonText,
    this.routeName,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        if (textButtonText != null)
          TextButton(
            onPressed: onPressed, // Use optional onPressed
            child: Text(textButtonText ?? ''),
          ),
      ],
    );
  }
}