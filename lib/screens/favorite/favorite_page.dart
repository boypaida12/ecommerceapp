// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ecommerceapp/shared/custombutton.dart';
import 'package:ecommerceapp/shared/product_card.dart';
import 'package:ecommerceapp/shared/products.dart';
import 'package:ecommerceapp/shared/text_widgets/text_body.dart';
import 'package:ecommerceapp/shared/text_widgets/text_heading.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  TextEditingController searchController = TextEditingController();

  final List<Product> favoriteProducts = [];

  final List<Product> sampleProducts = [
    Product(
    title: "Designer Bag",
    subtitle: "Sample Product",
    price: 99.99, 
    imageURL: 'assets/images/product1.jpg',
  ),
  ];

  List<Product> filteredProducts = []; 


  void _onSearchChanged() {
    setState(() {
      filteredProducts = sampleProducts.where((product) =>
          product.title.toLowerCase().contains(searchController.text.toLowerCase())
      ).toList();
    });
  }


  @override
  void initState() {
    //to be replaced when api is available
    super.initState();
    favoriteProducts.addAll(sampleProducts);
      filteredProducts = sampleProducts; // Initialize filteredProducts here
    searchController.addListener(_onSearchChanged);

  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Favorite"),
          centerTitle: true,
          actions: [
            Icon(Icons.notifications_outlined)
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), 
                  borderSide: BorderSide(color: Colors.grey)           
                ),
                prefixIcon: Icon(Icons.search),
                suffixIcon:  Icon(Icons.filter_list),
                hintText: "Search something...",
               contentPadding: EdgeInsets.symmetric(horizontal: 10),
                
              ),
               ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //  ElevatedButton(                   
                  //   child: Text("All",
                  //   style: TextStyle(
                  //     color: Colors.white
                  //   ),),
                  //   style: ButtonStyle(
                  //     backgroundColor:  MaterialStatePropertyAll(Colors.deepPurple[900]),
                  //     shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                  //   ),
                  //   onPressed: (){}, 
                  //   ),
                   
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: GestureDetector(
                       child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: Text("All",
                          style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(10)
                        ),
                       ),
                       onTap: () => (),
                     ),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                       child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                         child: TextHeading(text: "Latest", weight: FontWeight.normal, ),
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                        ),
                       ),
                       onTap: () => (),
                     ),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                       child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: TextHeading(text: "Most Popular", weight: FontWeight.normal,),
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                        ),
                       ),
                       onTap: () => (),
                     ),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                       child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: TextHeading(text: "Cheapest", weight: FontWeight.normal, ),
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                        ),
                       ),
                       onTap: () => (),
                     ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                       child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: TextHeading(text: "Trending", weight: FontWeight.normal, ),
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                        ),
                       ),
                       onTap: () => (),
                     ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 100,
                  crossAxisSpacing: 5
                  ), 
                itemCount: favoriteProducts.length,
                itemBuilder:(context, index) {
                  Product product = favoriteProducts[index];
                  return ProductCard(product: product);
                },
                ),
            )

          ],
        ),
      ),
    );
  }
}