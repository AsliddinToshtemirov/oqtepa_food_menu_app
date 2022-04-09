// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';

import 'package:oqtepa_food_menu_app/pages/burger.dart';
import 'package:oqtepa_food_menu_app/pages/lavash.dart';
import 'package:oqtepa_food_menu_app/pages/pepsi.dart';
import 'package:oqtepa_food_menu_app/pages/sandvich.dart';
import 'package:oqtepa_food_menu_app/pages/set.dart';
import 'package:oqtepa_food_menu_app/pages/shaurma.dart';
import 'package:oqtepa_food_menu_app/pages/xotdog.dart';
import 'package:provider/provider.dart';

import '../models/lang.dart';
import '../pages/pitsa.dart';
import '../pages/salat.dart';
import '../pages/sous.dart';

class home_page extends StatefulWidget {
  home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  CarouselController buttonCarouselController = CarouselController();

  bool selected = false;
  get Selected => [true, false, false];
  final List<Lang> _langs = [
    Lang('uz', true),
    Lang("ru", false),
    Lang('en', false),
  ];
  var activeLangIndex = 0;
  get isSelected => null;

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 86, 86),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/05/14/16/54/cyber-3400789__340.jpg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Asliddin",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text("+998888888888",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromARGB(255, 10, 61, 61)
                                      .withOpacity(0.5),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    selected ? Icons.sunny : Icons.dark_mode,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      selected = !selected;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ToggleButtons(
                          fillColor: Colors.transparent,
                          selectedBorderColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          borderColor: Colors.transparent,
                          selectedColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          children: [
                            langButtons(_langs[0]),
                            langButtons(_langs[1]),
                            langButtons(_langs[2])
                          ],
                          isSelected: _langs.map((e) => e.isActive).toList(),
                          onPressed: (int index) {
                            setState(() {
                              for (var e in _langs) {
                                e.isActive = false;
                              }
                              _langs[index].isActive = true;
                            });
                            switch (index) {
                              case 0:
                                {
                                  var newlocale = Locale("uz");
                                  context.setLocale(newlocale);

                                  langProvider.langChanged();
                                }
                                break;
                              case 1:
                                {
                                  var newlocale = Locale("ru");
                                  context.setLocale(newlocale);

                                  langProvider.langChanged();
                                }
                                break;
                              case 2:
                                {
                                  var newlocale = Locale("en");
                                  context.setLocale(newlocale);

                                  langProvider.langChanged();
                                }
                            }
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text("salom")
            ]),
          ),
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              labelColor: Color.fromARGB(255, 0, 0, 0),
              tabs: [
                Tab(text: "burger".tr()),
                Tab(
                  text: "lavash".tr(),
                ),
                Tab(
                  text: "drink".tr(),
                ),
                Tab(text: "pizza".tr()),
                Tab(
                  text: "salad".tr(),
                ),
                Tab(text: "sandvich".tr()),
                Tab(
                  text: "set".tr(),
                ),
                Tab(
                  text: "shawurma".tr(),
                ),
                Tab(
                  text: "sous".tr(),
                ),
                Tab(
                  text: "hot-dog".tr(),
                ),
              ],
            ),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 0, 0)),
            title: Row(
              children: [
                Image.asset(
                  "assets/oqtepa.png",
                  height: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Oqtepa Lavash",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            backgroundColor: Colors.white,
          ),
          body: TabBarView(children: const <Widget>[
            BurgerPage(),
            LavashPage(),
            PepsiPage(),
            PitsaPage(),
            SalatPage(),
            SandvichPage(),
            SetPage(),
            Shaurmapage(),
            SousPage(),
            XotdogPage()
          ]),
        ));
  }

  Widget langButtons(Lang langs) {
    return Container(
        height: 40,
        width: 40,
        child: Center(
          child: Text(
            langs.name,
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: langs.isActive
                ? Colors.white.withOpacity(0.5)
                : Colors.black12));
  }
}
