import 'dart:ffi';

class Product {
  final String imageURL;
  final String title;
  final String subtitle;
  final double price;

  Product({
    required this.imageURL, 
    required this.title, 
    required this.subtitle, 
    required this.price
    });
}