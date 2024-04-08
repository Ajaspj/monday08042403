import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  Color Value = Colors.white;
  onchangecolor(Color newcolor) {
    Value = newcolor;
  }
}
