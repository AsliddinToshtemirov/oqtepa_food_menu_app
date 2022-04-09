import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';

class DetailsPage extends StatelessWidget {
  Foods item;
  DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("food"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 20, 0, 0),
            child: Image.asset(
              item.ImageUrl,
              height: 250,
            ),
          )
        ],
      ),
    );
  }
}
