// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
            Container(
              padding: EdgeInsets.all(20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.search),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Search smething...",
                        style: TextStyle(color: Colors.grey),),
                      ),                   
                    ],
                  ),
                   Image(image: AssetImage("assets/filter.png"))
                ],
              ),
            ),
            SizedBox(height: 10,)
            ,SingleChildScrollView(
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
                          child: Text("Latest",
                          style: TextStyle(
                            color: Colors.grey
                          ),),
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
                          child: Text("Most Popular",
                          style: TextStyle(
                            color: Colors.grey
                          ),),
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
                          child: Text("Cheapest",
                          style: TextStyle(
                            color: Colors.grey
                          ),),
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
                          child: Text("Trending",
                          style: TextStyle(
                            color: Colors.grey
                          ),),
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
            )

          ],
        ),
      ),
    );
  }
}