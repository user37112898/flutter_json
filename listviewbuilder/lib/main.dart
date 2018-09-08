import 'package:flutter/material.dart';
import 'dart:convert';
import 'newWidget.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<newWidget> list = <newWidget>[];
    newWidget nw = new newWidget();
    list.insert(0, nw);
    list.insert(0, nw);
    list.insert(0, nw);
    return Scaffold(
      body: new ListView.builder(
        padding: new EdgeInsets.all(8.0),
        itemCount: list.length,
        itemExtent: 20.00,
        itemBuilder: (BuildContext context, int index) {
          return list[index];
        },
      ),
    );
  }
}
