import 'package:flutter/material.dart';

class UserAuth with ChangeNotifier {
  int point = 700;
  void addScore(int score) {
    point += score;

    notifyListeners();
  }
}
