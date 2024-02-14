import 'package:flutter/material.dart';

class CustomPaymentMethod extends StatelessWidget {
  final String bankCardImg;
  final String cardProviderName;
  final String cardNumberorEmail;
  final bool? isChecked;
  // final bool tristate = false;
  final void Function(bool?)? onChanged;

  const CustomPaymentMethod({
    super.key,
    this.isChecked,
    required this.bankCardImg,
    required this.cardNumberorEmail,
    required this.cardProviderName,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            bankCardImg,
            height: 60,
            width: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          cardProviderName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          cardNumberorEmail,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        trailing: Checkbox.adaptive(
          value: isChecked,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
