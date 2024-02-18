import 'package:ecommerceapp/shared/customnavbar.dart';
import 'package:flutter/material.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomNavbar(title: 'Add New Card'),
      body: Column(
        
      ),
    );
  }
}