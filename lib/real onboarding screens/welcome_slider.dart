import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _pageController = PageController();
  int _currentPage = 0;

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
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/bag.jpg'),
                                  fit: BoxFit.cover),
                            )),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        "Various Collections of the Latest Products",
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
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at vulputate ipsum,",
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
                              padding:
                                  const EdgeInsets.only(top: 20.0, right: 8),
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
                          }),),

                          
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
