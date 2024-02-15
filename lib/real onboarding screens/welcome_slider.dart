import 'package:ecommerceapp/real%20onboarding%20screens/welcome_model.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _pageController = PageController();
  int _currentPage = 0;

  List<WelcomeSlider> welcomeSlider = [
    WelcomeSlider(
      image: 'assets/images/bag.jpg',
      title: "Various Collections of the Latest Products",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at vulputate ipsum,",
    ),
    WelcomeSlider(
      image: 'assets/images/clothes.jpg',
      title: "Complete Collections of Colors and Sizes",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at vulputate ipsum,",
    ),
    WelcomeSlider(
      image: 'assets/images/bag2.jpg',
      title: "Find the most suitable outfit for You",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at vulputate ipsum,",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemCount: welcomeSlider.length,
                itemBuilder: (context, index) {
                  final item = welcomeSlider[index];
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                  image: AssetImage(item.image),
                                  fit: BoxFit.cover),
                            )),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                      ),
                      const SizedBox(height: 15.0),
                      Text(
                        item.description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                      ),
                      const SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 20.0, right: 8),
                            child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: _currentPage == index
                                      ? Color(0xFF514EB6)
                                      : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5),
                                )),
                          );
                        }),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Color(0xFF514EB6),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 15.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            onPressed: () {},
                            child: Text("Create Account")),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Already have an account?",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                  color: Color(0xFF514EB6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                        ),
                      )
                    ],
                  );
                },
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
