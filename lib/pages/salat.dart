import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/cards/salat_card.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class SalatPage extends StatelessWidget {
  const SalatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LangProvider>(
      builder: (context, value, child) => ListView.builder(
        itemCount: salat.length,
        itemBuilder: (BuildContext context, int index) {
          return customSalatCard(salat[index]);
        },
      ),
    ));
  }
}
