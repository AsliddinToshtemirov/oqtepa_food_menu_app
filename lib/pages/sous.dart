import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/cards/sous_card.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class SousPage extends StatelessWidget {
  const SousPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LangProvider>(
      builder: (context, value, child) => ListView.builder(
        itemCount: sous.length,
        itemBuilder: (BuildContext context, int index) {
          return mySous(sous[index], context);
        },
      ),
    ));
  }
}
