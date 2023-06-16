import 'package:flutter/material.dart';
import 'package:nutritionapp/login.dart';

import 'Calories/fruits.dart';
import 'MainPage.dart';

import 'login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: login(),
    );
  }
}
