// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int data = 0;

  void setData(int text) {
    data = text;
    notifyListeners();
  }

  int get getData => data;
}
