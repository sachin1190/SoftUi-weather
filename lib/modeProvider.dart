import 'package:flutter/material.dart';

class ModeProvider extends ChangeNotifier {
  bool darkMode = true;

  void toggleMode() {
    if (darkMode) {
      darkMode = false;
      notifyListeners();
    } else if (!darkMode) {
      darkMode = true;
      notifyListeners();
    }
  }
}
