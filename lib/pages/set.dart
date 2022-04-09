import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/cards/set_card.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class SetPage extends StatelessWidget {
  const SetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LangProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: set.length,
          itemBuilder: (BuildContext context, int index) {
            return mySetItem(set[index], context);
          },
        ),
      ),
    );
  }
}
