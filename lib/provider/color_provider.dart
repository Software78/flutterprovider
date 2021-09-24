import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  bool light = true;

  MaterialColor maincolor = Colors.blue;

  void altercolor() {
    light = !light;
    if (light == false) {
      maincolor = Colors.brown;
      notifyListeners();
    } else {
      maincolor = Colors.blue;
      notifyListeners();
    }
  }
}
