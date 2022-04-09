import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/cards/sandvich_card.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class SandvichPage extends StatelessWidget {
  const SandvichPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LangProvider>(
      builder: (context, value, child) => ListView.builder(
          itemCount: sandvich.length,
          itemBuilder: (BuildContext context, int index) {
            return index == 0
                ? horizontalSandvichCard(sandvich[0])
                : mySandvichItem(sandvich[1], context);
          }),
    ));
  }
}
//  horizontalSandvichCard(sandvich[0]),
//           mySandvichItem(sandvich[1], context)