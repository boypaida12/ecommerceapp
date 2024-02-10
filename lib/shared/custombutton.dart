import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.icon,
  });

  final String buttonText;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      style: ElevatedButton.styleFrom(
        side: buttonText == 'Log Out' ? const BorderSide(color: Colors.transparent) : const BorderSide(color: Color.fromRGBO(81, 78, 183, 1)),
        elevation: 0,
        backgroundColor: buttonText == 'Mark as Done' ? Colors.white : buttonText == 'Log Out' ? Colors.transparent : const Color.fromRGBO(81, 78, 183, 1)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon(icon),
          Text(
            buttonText, 
          style: TextStyle(
            color: buttonText == 'Mark as Done' ? const Color.fromRGBO(81, 78, 183, 1) : buttonText == 'Log Out' ? Colors.red : Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}