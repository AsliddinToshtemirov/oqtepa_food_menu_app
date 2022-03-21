// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:oqtepa_food_menu_app/screens/sign_in.dart';

class onboarding extends StatefulWidget {
  onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final List<PageViewModel> pages = [
    PageViewModel(
        image: Image.asset('assets/leading_one.png'),
        decoration: PageDecoration(
          bodyPadding: EdgeInsets.only(bottom: 100),
          bodyAlignment: Alignment.bottomLeft,
        ),
        titleWidget: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              'All your favorites',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            )
          ],
        ),
        bodyWidget: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              """Order from the best local restaurants 
     with easy, on-demand delivery.""",
              style: TextStyle(fontSize: 18, color: Color(0xff6D6D6D)),
            )
          ],
        )),
    PageViewModel(
        image: Image.asset('assets/leading_two.png'),
        decoration: PageDecoration(
          bodyPadding: EdgeInsets.only(bottom: 100),
          bodyAlignment: Alignment.bottomLeft,
        ),
        titleWidget: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              'Free delivery offers',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            )
          ],
        ),
        bodyWidget: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              """Free delivery for new customers via Apple 
            Pay and others payment methods.""",
              style: TextStyle(fontSize: 18, color: Color(0xff6D6D6D)),
            )
          ],
        )),
    PageViewModel(
        image: Image.asset('assets/leading_tree.png'),
        decoration: PageDecoration(
          bodyPadding: EdgeInsets.only(bottom: 100),
          bodyAlignment: Alignment.bottomLeft,
        ),
        titleWidget: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              'All your favorites',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            )
          ],
        ),
        bodyWidget: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              """Order from the best local restaurants 
     with easy, on-demand delivery.""",
              style: TextStyle(fontSize: 18, color: Color(0xff6D6D6D)),
            )
          ],
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
              size: Size(10, 10),
              color: Color.fromARGB(255, 187, 204, 188),
              activeSize: Size.square(15),
              activeColor: Color.fromARGB(255, 0, 156, 0)),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          done: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                    bottomLeft: const Radius.circular(10.0),
                    bottomRight: const Radius.circular(10.0),
                  )),
              height: 40,
              width: 80,
              child: Center(
                child: Text("Get start",
                    style:
                        TextStyle(color: Color.fromARGB(255, 224, 230, 224))),
              )),
          skip: Text("Skip", style: TextStyle(color: Colors.green)),
          next: Text("Next", style: TextStyle(color: Colors.green)),
          onDone: () => onDone(context)),
    );
  }

  PageDecoration getPageDecoration() => const PageDecoration(
        bodyPadding: EdgeInsets.only(bottom: 50),
        bodyAlignment: Alignment.bottomLeft,
      );
}

void onDone(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => sign_in()));
}
