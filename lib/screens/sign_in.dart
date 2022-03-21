// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/onboarding/onboarding.dart';
import 'package:oqtepa_food_menu_app/screens/home_page.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  final _controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
          child: const Text("Sign In",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => onboarding()),
            );
          },
        ),
      ),
      body: ListView(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 10),
                  child: Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 2),
                      child: Text(
                        "Enter your Phone number or Email",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "for sign in, Or ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Create new account.",
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusColor: Colors.green,
                              hoverColor: Colors.green,
                              fillColor: Colors.green,
                              border: OutlineInputBorder(),
                              hintText: "Email",
                              suffix: Icon(Icons.email_outlined)),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusColor: Colors.green,
                              hoverColor: Colors.green,
                              fillColor: Colors.green,
                              hintText: "Password",
                              border: OutlineInputBorder(),
                              suffix: Icon(Icons.visibility_off)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password ?",
                          style:
                              TextStyle(color: Color.fromARGB(221, 48, 44, 44)),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => home_page())));
                      }),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign In",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                        height: 55,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 167, 83),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(10.0),
                              topRight: const Radius.circular(10.0),
                              bottomLeft: const Radius.circular(10.0),
                              bottomRight: const Radius.circular(10.0),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Or",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 55,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 63, 107),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                          )),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 35,
                            width: 35,
                            child: Image.asset("assets/Path.png"),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Text(
                            "Connect with Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 55,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 37, 135, 214),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                          )),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 35,
                            width: 35,
                            child: Image.asset("assets/google.png"),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Text(
                            "Connect with Google",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ]),
                    )
                  ],
                ))
          ]),
        ],
      ),
    );
  }
}
