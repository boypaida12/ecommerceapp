import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Container(
          constraints: BoxConstraints(maxWidth: 200),
          child: Center(
            child: Row(children: [
              Image.asset('assets/images/styleLogo.png',
                  fit: BoxFit.contain, height: 32),
              SizedBox(width: 5),
              Text('Stylish')
            ]),
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search any Product ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Featured',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    PillWidget(trailingIcon: Icons.sort, text: 'Sort'),
                    SizedBox(width: 10),
                    PillWidget(trailingIcon: Icons.filter, text: 'Filter')
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset('assets/images/featured.png',
                              fit: BoxFit.cover, height: 50, width: 50),
                        ),
                        Text('Beauty',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset('assets/images/fashion.png',
                              fit: BoxFit.cover, height: 50, width: 50),
                        ),
                        Text('Fashion',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset('assets/images/kids.png',
                              fit: BoxFit.cover, height: 50, width: 50),
                        ),
                        Text('Kids',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset('assets/images/mens.png',
                              fit: BoxFit.cover, height: 50, width: 50),
                        ),
                        Text('Mens',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset('assets/images/women.png',
                              fit: BoxFit.cover, height: 50, width: 50),
                        ),
                        Text('Womens',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Montserrat')),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          // Card(
          //     margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10)),
          //     clipBehavior: Clip.antiAliasWithSaveLayer,
          //     elevation: 5,
          //     child: Stack(
          //       fit: StackFit.expand,
          //       children: [
          //         Image.asset('assets/images/cardImage.png',
          //             fit: BoxFit.cover),
          //         Positioned(
          //           top: 50,
          //           left: 16,
          //           child: Column(
          //             children: [
          //               Text('50 - 40 % OFF',
          //                   style: TextStyle(
          //                       fontSize: 40,
          //                       fontWeight: FontWeight.bold,
          //                       fontFamily: 'Montserrat',
          //                       color: Colors.white)),
          //               SizedBox(height: 10),
          //               Text('Now in (product)',
          //                   style: TextStyle(
          //                       fontSize: 16,
          //                       fontWeight: FontWeight.normal,
          //                       fontFamily: 'Montserrat',
          //                       color: Colors.white)),
          //               Text('All colors',
          //                   style: TextStyle(
          //                       fontSize: 16,
          //                       fontWeight: FontWeight.normal,
          //                       fontFamily: 'Montserrat',
          //                       color: Colors.white)),
          //               ElevatedButton(
          //                 onPressed: () {},
          //                 child: Row(
          //                   children: [
          //                     Text('Shop Now',
          //                         style: TextStyle(
          //                             fontFamily: 'Montserrat',
          //                             color: Colors.white,
          //                             fontSize: 16,
          //                             fontWeight: FontWeight.bold)),
          //                     Icon(Icons.arrow_forward,
          //                         color: Colors.white, size: 16)
          //                   ],
          //                 ),
          //                 style: ElevatedButton.styleFrom(
          //                   backgroundColor: Color(0xFFF83758),
          //                   foregroundColor: Colors.white,
          //                   minimumSize: Size(100, 50),
          //                   shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(6),
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //         )
          //       ],
          //     )
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Image.asset('assets/images/cardImage.png',
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 34.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('50 - 40% OFF',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Montserrat',
                            color: Colors.white)),
                    SizedBox(height: 10),
                    Text('Now in (product)\n All colors',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat')),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Buy Now',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFA7189),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ]),

        
      ),
    );
  }
}

class PillWidget extends StatelessWidget {
  final IconData trailingIcon;
  final String text;

  PillWidget({required this.trailingIcon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(width: 5),
        Icon(trailingIcon, size: 16, color: Colors.grey[600])
      ]),
    );
  }
}
