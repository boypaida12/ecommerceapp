import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerceapp/onboarding_screens/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductorySliderPage extends StatefulWidget {
  const IntroductorySliderPage({super.key});

  @override
  State<IntroductorySliderPage> createState() => _IntroductorySliderPageState();
}

class _IntroductorySliderPageState extends State<IntroductorySliderPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const SplashScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(32.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.symmetric(vertical: 20),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 16, right: 16),
          child: TextButton(
            child: const Text('Skip',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () => _onIntroEnd(context),
          ),
        )),
      ),

      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: Image.asset('assets/images/slider1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: Image.asset('assets/images/slider2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
              "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: Image.asset('assets/images/slider3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of last page - reversed",
          bodyWidget: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click on ", style: bodyStyle),
              Icon(Icons.edit),
              Text(" to edit a post", style: bodyStyle),
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.center,
          ),
          image: Image.asset('assets/images/slider3.png'),
          reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,

      back: const Text('Prev',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(196, 196, 196, 1.0))),
      skip: const Text('Prev',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(196, 196, 196, 1.0))),
      next: const Text('Next',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFF83758))),
      done: const Text('Get Started',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFF83758))),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Color.fromRGBO(23, 34, 59, 1.0),
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
