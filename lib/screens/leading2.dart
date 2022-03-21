// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/screens/leading1.dart';
import 'package:oqtepa_food_menu_app/screens/leading3.dart';

class leading_two extends StatelessWidget {
  const leading_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Image.asset("assets/leading_two.png"),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: duplicate_ignore
            Text(
              "Free delivery offers",
              // ignore: prefer_const_constructors
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("""Free delivery for new customers via Apple 
            Pay and others payment methods.""")
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(
              height: 140,
            ),
          ],
        ),
        DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                    colors: [Color(0xff53E88B), Color(0xff15BE77)])),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    alignment: Alignment.center,
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        right: 75, left: 75, top: 15, bottom: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const leading_tree()),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                )))
      ],
    ));
  }
}
