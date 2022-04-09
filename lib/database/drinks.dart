import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';

Widget drinks(Pepsi pepsi, context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
    child: SizedBox(
      height: 228,
      child: InkWell(
        onTap: (() {}),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 20,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 0, top: 8, bottom: 8),
                    child: Container(
                      width: 190.0,
                      height: 204.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(pepsi.ImageUrl)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SizedBox(
                            width: 150,
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pepsi.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(pepsi.detail),
                                    Expanded(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.favorite_outline)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 0,
                                  ),
                                  child: Text(
                                    pepsi.prise,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "select".tr(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                      height: 30,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 182, 27, 27),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
