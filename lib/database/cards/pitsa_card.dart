import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/database/categories.dart';
import 'package:easy_localization/easy_localization.dart';

Widget pizzaItem(Pizza pizza, context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
    child: SizedBox(
      height: 257,
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
                      width: 135.0,
                      height: 204.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(pizza.ImageUrl)),
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
                            width: 190,
                            height: 230,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, right: 10),
                                  child: Text(
                                    "  " + pizza.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(pizza.detail),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                    bottom: 0,
                                  ),
                                  child: Text(
                                    pizza.prise,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_outline)),
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

Widget customPizzaCard(Pizza pizza) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
        child: SizedBox(
          height: 250,
          width: 490,
          child: InkWell(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8),
                        child: Container(
                          width: 210.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(pizza.ImageUrl)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    pizza.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    pizza.prise,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite_outline)),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
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
                                        color: Color.fromARGB(255, 182, 27, 27),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      pizza.detail,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
