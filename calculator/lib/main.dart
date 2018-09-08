import 'package:flutter/material.dart';
import 'package:calculator/HomePage.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.blueGrey),
      home: new HomePage(),
    );
  }
}
