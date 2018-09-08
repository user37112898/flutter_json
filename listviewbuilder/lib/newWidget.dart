import 'package:flutter/material.dart';

class newWidget extends StatefulWidget {
  newWidget();

  @override
  _newWidgetState createState() => _newWidgetState();
}

class _newWidgetState extends State<newWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text(
        "hello world",
      ),
    );
  }
}
