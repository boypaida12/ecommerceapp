import 'package:flutter/material.dart';

class ProductRow extends StatelessWidget {
  final String productImage, productTitle, color;
  final double price;
  
  const ProductRow({
    required this.productTitle,
    required this.productImage,
    required this.price,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(color: Colors.red),
      // height: MediaQuery.of(context).size.height *.35,
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
              const SizedBox(width: 16,),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                          text: 'Color:',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        TextSpan(
                          text: color,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("\$$price", 
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
