// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:minimal_login/intro_screens/intro_screen1.dart';
import 'package:minimal_login/intro_screens/intro_screen2.dart';
import 'package:minimal_login/intro_screens/intro_screen3.dart';
import 'package:minimal_login/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'homepage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller init
  final PageController _controller = PageController();

  //check if we are on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: _controller,
        onPageChanged: (value) {
          setState(() {
            onLastPage = (value == 2);
          });
        },
        children: const [
          IntroPage1(),
          IntroPage2(),
          IntroPage3(),
        ],
      ),
      //Smooth Page Indicators
      Container(
        alignment: const Alignment(0, 0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //text
            GestureDetector(
                onTap: () => _controller.jumpToPage(2),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                )),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
            ),

            //text
            onLastPage
                ? GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ))
                : GestureDetector(
                    onTap: () => _controller.nextPage(
                        duration: Duration(seconds: 2), curve: Curves.bounceIn),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ))
          ],
        ),
      )
    ]));
  }
}
