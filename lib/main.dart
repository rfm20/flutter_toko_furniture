import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
