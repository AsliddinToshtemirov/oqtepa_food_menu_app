import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:oqtepa_food_menu_app/database/drinks.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:provider/provider.dart';

class PepsiPage extends StatelessWidget {
  const PepsiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LangProvider>(
      builder: (context, value, child) => ListView.builder(
        itemCount: pepsi.length,
        itemBuilder: (BuildContext context, int index) {
          return drinks(pepsi[index], context);
        },
      ),
    )
        //     body: ListView(
        //   children: [
        //     const Padding(
        //       padding: EdgeInsets.only(left: 15.0, top: 10),
        //       child: Text(
        //         "Ichimlik",
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     drinks(pepsi[0], context),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 15.0, top: 10),
        //       child: Text(
        //         "Pepsi",
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     drinks(pepsi[1], context),
        //     drinks(pepsi[2], context),
        //     drinks(pepsi[3], context),
        //     drinks(pepsi[4], context),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 15.0, top: 10),
        //       child: Text(
        //         "Sok",
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     drinks(pepsi[5], context),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 15.0, top: 10),
        //       child: Text(
        //         "Suv",
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     drinks(pepsi[6], context),
        //     drinks(pepsi[7], context),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 15.0, top: 10),
        //       child: Text(
        //         "Kofe",
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     drinks(pepsi[8], context),
        //     drinks(pepsi[9], context),
        //     const Padding(
        //       padding: EdgeInsets.only(left: 15.0, top: 10),
        //       child: Text(
        //         "Choy",
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     drinks(pepsi[10], context),
        //     drinks(pepsi[11], context),
        //   ],
        // )  );
        );
  }
}
