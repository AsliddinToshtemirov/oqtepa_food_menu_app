// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

import 'categories.dart';

import 'package:flutter/material.dart';

Widget myItem(Foods list, context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
    child: SizedBox(
      height: 228,
      child: InkWell(
        onTap: (() {}),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 0, top: 8, bottom: 8),
                    child: Container(
                      width: 135.0,
                      height: 204.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(list.ImageUrl)),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SizedBox(
                            width: 190,
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(list.detail),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                    bottom: 0,
                                  ),
                                  child: Text(
                                    list.prise,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite_outline)),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "select".tr(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 182, 27, 27),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget horizontalCard(Foods list) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
        child: SizedBox(
          height: 230,
          width: 490,
          child: InkWell(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8),
                        child: Container(
                          width: 200.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(list.ImageUrl)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    list.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    list.prise,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "select".tr(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 182, 27, 27),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      list.detail,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
