

import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/card.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LangProvider>(builder: ((context, value, child) {
      return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return index == 3
              ? horizontalCard(list[index])
              : myItem(list[index], context);
        },
      );
    })));
  }
}

