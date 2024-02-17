import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(onClosing: (){
      Navigator.pop(context);
    }
    , builder: (context) => Container(
      child: Container(
        color: Colors.green,
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50)
        ),
        child: const Column(
          children: [
            Icon(Icons.check, color: Colors.white, size: 30,)
          ],
        ),
      ),
    ));
  }
} 