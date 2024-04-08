import 'package:flutter/material.dart';
import 'package:monday08042403/controll/HomeScreencontroller.dart';
import 'package:monday08042403/view/homescreen/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenController(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
