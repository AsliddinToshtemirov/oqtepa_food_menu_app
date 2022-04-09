import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/cards/shaurma_card.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class Shaurmapage extends StatelessWidget {
  const Shaurmapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LangProvider>(
      builder: (context, value, child) => ListView.builder(
        itemCount: shaurma.length,
        itemBuilder: (BuildContext context, int index) {
          return myShaurmaItem(shaurma[index], context);
        },
      ),
    ));
  }
}
