import 'package:flutter/material.dart';


// copy the code below to show the bottomsheet via the custom button in the screen you are working

// start copying from here
    // CustomButton(buttonText: 'Show Bottom Sheet', onPressed: (){
    // showModalBottomSheet(context: context, builder: (context) => CustomBottomSheet(
    //  child: Column() //can change Column to any widget depending on your screen's use case
    // ));
    // }),
// end copying here


// This widget creates a bottom sheet that can contain any other widget as its content.
class CustomBottomSheet extends StatelessWidget {
    // The widget that will be displayed inside the bottom sheet.
    // final means the child cannot be changed once the box.
    // Widget refers to any element you can build in Flutter. In our case it will likely be a Column widget. 
  final Widget child;

  const CustomBottomSheet({
    Key? key,
    required this.child, // making the widget required means it always has to be called before the widget can work.
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // Use the BottomSheet widget to create the bottom sheet.
    return BottomSheet(
      onClosing: () {
        Navigator.pop(context); // When the user taps outside the sheet, close it.
      },
      builder: (context) => Container(
        child: child, // the child Widget that is required.
      ),
    );
  }
}