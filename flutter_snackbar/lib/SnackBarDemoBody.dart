import 'package:flutter/material.dart';
import 'dart:async';

class SnackBarDemoBody extends StatefulWidget {
  @override
  _SnackBarDemoBodyState createState() => _SnackBarDemoBodyState();
}

class _SnackBarDemoBodyState extends State<SnackBarDemoBody> {
  IconData icon = Icons.keyboard_arrow_up;
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150.00,
            margin: EdgeInsets.only(bottom: 20.00),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Please Enter Text"),
              controller: textEditingController,
            ),
          ),
          MaterialButton(
            child: Icon(icon),
            color: Colors.tealAccent.withOpacity(0.25),
            onPressed: () {
              Timer _timer = new Timer(Duration(milliseconds: 2000), () {
                setState(() {
                  icon = Icons.keyboard_arrow_up;
                  textEditingController.clear();
                });
              });
              final snackBar = SnackBar(
                content: Text(textEditingController.text),
              );
              setState(() {
                icon = Icons.keyboard_arrow_down;
              });
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
