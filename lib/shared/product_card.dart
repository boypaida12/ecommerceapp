// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:ecommerceapp/shared/products.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network(product.imageURL,
        fit: BoxFit.cover,
        height: 100,
        ),
        SizedBox(height: 10,),
        Text(product.title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(product.subtitle,
        style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        Text('\$${product.price}',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
      ],
    );
  }
}
