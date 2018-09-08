import 'package:flutter/material.dart';

String _name = "Yash";

class ChatMessage extends StatelessWidget {
  final String text;

  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.00),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(right: 5.00),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _name,
                style: Theme.of(context).textTheme.subhead,
              ),
              new Container(
                margin: EdgeInsets.only(top: 5.00),
                child: new Text(text),
              ),
            ],
          )
        ],
      ),
    );
  }
}
