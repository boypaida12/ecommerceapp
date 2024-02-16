// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:ecommerceapp/shared/text_widgets/text_body.dart';
import 'package:ecommerceapp/shared/text_widgets/text_heading.dart';
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
    return  Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow:[BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5.0)]
      ),
      child: Column(
        children: [
          Image.network(product.imageURL,
          fit: BoxFit.cover,
          height: 100,
          ),
          SizedBox(height: 10,),
          TextHeading(text: product.title),
          TextBody(text: product.subtitle),
          TextHeading(text: '\$${product.price}'),
        ],
      ),
    );
  }
}
