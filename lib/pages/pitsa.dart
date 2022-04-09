import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/cards/pitsa_card.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class PitsaPage extends StatelessWidget {
  const PitsaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LangProvider>(
      builder: (context, value, child) => ListView.builder(
        itemCount: pizza.length,
        itemBuilder: (BuildContext context, int index) {
          return index == 0 || index == 5 || index == 6
              ? customPizzaCard(pizza[index])
              : pizzaItem(pizza[index], context);
        },
      ),
    ));
  }
}
