// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'categories.dart';

import 'package:flutter/material.dart';

Widget myItem(Categories list) {
  return Padding(
    padding: EdgeInsets.only(top: 30),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xffF2DFE1),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          height: 180,
          width: 150,
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(list.titile),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Time ",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(list.time),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 254, 252),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 30,
                    width: 30,
                    child: Center(
                      child: Icon(Icons.bookmark_add_outlined),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
            top: -30,
            left: 15,
            child: Image.asset(
              list.ImageUrl,
              height: 90,
              width: 90,
            ))
      ],
    ),
  );
}
