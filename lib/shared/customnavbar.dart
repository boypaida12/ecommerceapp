import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget implements PreferredSizeWidget{

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
  final String title;
  final IconData? actionIcon;
  final VoidCallback? onPressed;

  const CustomNavbar({
    Key? key ,
    required this.title,
    this.actionIcon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: (){}, 
        icon: const Icon(Icons.arrow_back_ios)
      ),
      title: Text(title),
      actions: [
        if (actionIcon != null) IconButton( // Use IconButton for interactive icons
          onPressed: onPressed, // Add an onPressed handler
          icon: Icon(actionIcon),
        ),
      ],
    );
  }
}