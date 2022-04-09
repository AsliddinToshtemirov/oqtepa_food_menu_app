import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  void langChanged() {
    notifyListeners();
  }
}
