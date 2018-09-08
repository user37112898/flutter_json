import 'package:flutter/material.dart';
import 'package:demochatapp/HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat Application",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    );
  }
}
