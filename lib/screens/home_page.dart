import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                "assets/oqtepa.png",
                height: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Oqtepa Lavash",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: [
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [IntroductionScreen()],
              ),
            )
          ],
        ));
  }
}
