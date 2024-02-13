import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.icon,
    this.iconSize,
    this.iconColor,
  });

  final String buttonText;
  final VoidCallback onPressed;
  final Object? icon;
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: buttonText == 'Log Out'
              ? const BorderSide(color: Colors.transparent)
              : buttonText == 'Sign Up with Google' ||
                      buttonText == 'Sign Up with Facebook' ||
                      buttonText == 'Detail'
                  ? const BorderSide(color: Colors.grey)
                  : const BorderSide(color: Color.fromRGBO(81, 78, 183, 1)),
          elevation: 0,
          backgroundColor: buttonText == 'Mark as Done'
              ? Colors.white
              : buttonText == 'Log Out' ||
                      buttonText == 'Detail' ||
                      buttonText == 'Sign Up with Google' ||
                      buttonText == 'Sign Up with Facebook'
                  ? Colors.transparent
                  : const Color.fromRGBO(81, 78, 183, 1)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon is IconData)
            Icon(
              icon as IconData,
              size: iconSize ?? 32.0, // Default size
              color: iconColor ?? Colors.white,
            ),
          if (icon is ImageProvider)
            Image(
              image: icon as ImageProvider,
              width: iconSize, // Adapt width based on image's aspect ratio
              height: iconSize,
            ),
          const SizedBox(
            width: 8,
          ),
          Text(
            buttonText,
            style: TextStyle(
              color: buttonText == 'Mark as Done'
                  ? const Color.fromRGBO(81, 78, 183, 1)
                  : buttonText == 'Log Out'
                      ? Colors.red
                      : buttonText == 'Sign Up with Google' ||
                              buttonText == 'Sign Up with Facebook' ||
                              buttonText == 'Detail'
                          ? Colors.black
                          : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
