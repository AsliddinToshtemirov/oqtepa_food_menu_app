import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:oqtepa_food_menu_app/lang_provider.dart';
import 'package:oqtepa_food_menu_app/onboarding/onboarding.dart';
import 'package:oqtepa_food_menu_app/screens/home_page.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: 'assets/translation',
      startLocale: Locale("uz"),
      supportedLocales: const [
        Locale("en"),
        Locale(
          "ru",
        ),
        Locale(
          "uz",
        ),
      ],
      child: MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => LangProvider())],
          child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Oqtepa Lavash',
        home: home_page(),
        debugShowCheckedModeBanner: false);
  }
}
