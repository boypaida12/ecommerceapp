import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RealSliderScreen extends StatefulWidget {
  const RealSliderScreen({super.key});

  @override
  State<RealSliderScreen> createState() => _RealSliderScreenState();
}

class _RealSliderScreenState extends State<RealSliderScreen> {
  final List<String> imgList = [
    'assets/images/bag.jpg',
    'assets/images/clothes.jpg',
    'assets/images/bag2.jpg',
  ];

  final List<String> titles = [
    'Various Collections of the Latest Products',
    'Complete Collection of Colors and Sizes',
    'Find the Most Suitable Outfit for You'
  ];

  final List<String> descriptions = [
    'In hac habitasse platea dictumst. In sed mi viverra lorem. Sed at urna at est.',
    'In hac habitasse platea dictumst. In sed mi viverra lorem. Sed at urna at est.',
    'In hac habitasse platea dictumst. In sed mi viverra lorem. Sed at urna at est.'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        autoPlay: true,
        height: MediaQuery.of(context).size.height,
        aspectRatio: 2.0,
      ),
      items: imgList.map((img) {
        return Builder(
          builder: (BuildContext context) {
            return Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                titles[imgList.indexOf(img)],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                descriptions[imgList.indexOf(img)],
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )
            ]);
          },
        );
      }).toList(),
    );
  }
}
