import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: EdgeInsets.symmetric(horizontal: 40.00),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),
            new Padding(padding: EdgeInsets.only(top: 25.00)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: addition,
                  color: Colors.grey,
                  highlightColor: Colors.blueGrey,
                  child: new Text(
                    "+",
                    style:
                        new TextStyle(fontSize: 30.00, color: Colors.white70),
                  ),
                  height: 40.00,
                  minWidth: 100.00,
                ),
                new MaterialButton(
                  onPressed: subtraction,
                  color: Colors.grey,
                  highlightColor: Colors.blueGrey,
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 30.00,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700),
                  ),
                  height: 40.00,
                  minWidth: 100.00,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 25.00)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: multiplication,
                  color: Colors.grey,
                  highlightColor: Colors.blueGrey,
                  child: new Text(
                    "*",
                    style: new TextStyle(
                      fontSize: 30.00,
                      color: Colors.white70,
                    ),
                  ),
                  height: 40.00,
                  minWidth: 100.00,
                ),
                new MaterialButton(
                  onPressed: division,
                  highlightColor: Colors.blueGrey,
                  color: Colors.grey,
                  child: new Text(
                    "\\",
                    style: new TextStyle(
                      fontSize: 30.00,
                      color: Colors.white70,
                    ),
                  ),
                  height: 40.00,
                  minWidth: 100.00,
                ),
              ],
            ),
            new Container(
              padding: EdgeInsets.only(top: 25.00,),
              child: new Text(
                "Output : $sum",style: new TextStyle(fontSize: 30.00,color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}