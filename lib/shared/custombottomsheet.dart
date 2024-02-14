import 'package:flutter/material.dart';


// copy the code below to show the bottomsheet via the custom button in the screen you are working

    // CustomButton(buttonText: 'Show Bottom Sheet', onPressed: (){
    // showModalBottomSheet(context: context, builder: (context) => CustomBottomSheet());
    // }),

class CustomBottomSheet extends StatelessWidget {
  final Widget child;

  const CustomBottomSheet({
    Key? key,
    required this.child,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {
        Navigator.pop(context);
      },
      builder: (context) => Container(
        child: child,
      ),
    );
  }
}
