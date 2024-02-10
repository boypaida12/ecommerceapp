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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Featured',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  PillWidget(trailingIcon: Icons.sort, text: 'Sort'),
                  PillWidget(trailingIcon: Icons.filter, text: 'Filter')
                ],
              )
            ],
          )
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
