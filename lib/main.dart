import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Oqtepa Lavash',
        home: onboarding(),
        debugShowCheckedModeBanner: false);
  }
}
