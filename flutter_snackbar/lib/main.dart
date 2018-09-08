import 'package:flutter/material.dart';
import 'package:flutter_snackbar/SnackBarDemoBody.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: SnackBarDemoBody(),
      ),
    );
  }
}
