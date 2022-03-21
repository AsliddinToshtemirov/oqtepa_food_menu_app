import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/screens/leading1.dart';
import 'package:oqtepa_food_menu_app/screens/leading3.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
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
            MaterialPageRoute(builder: (context) => const leading_tree()),
          );
        },
      ),
    ));
  }
}
