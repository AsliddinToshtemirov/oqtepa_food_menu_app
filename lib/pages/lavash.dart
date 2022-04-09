

import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/lavash_card.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import '../database/categories.dart';

class LavashPage extends StatelessWidget {
  const LavashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<LangProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: lavash.length,
          itemBuilder: (BuildContext context, int index) {
            return index == 4
                ? horizontalLavashCard(lavash[index])
                : lavashCard(lavash[index], context);
          },
        );
      },
    ));
  }
}
 