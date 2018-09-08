import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name, username, avatar;
  bool isData = false;

  FetchJSON() async {
    var Response = await http.get(
      "https://api.github.com/users/nitishk72",
      headers: {"Accept": "application/json"},
    );

    if (Response.statusCode == 200) {
      String responseBody = Response.body;
      var responseJSON = json.decode(responseBody);
      username = responseJSON['login'];
      name = responseJSON['name'];
      avatar = responseJSON['avatar_url'];
      isData = true;
      setState(() {
        print('UI Updated');
      });
    } else {
      print('Something went wrong. \nResponse Code : ${Response.statusCode}');
    }
  }

  @override
  void initState() {
    FetchJSON();
  }

  Widget MyUI() {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new ListView(
        children: <Widget>[
          new Image.network(
            avatar,
            width: 100.0,
            height: 100.0,
          ),
          new Padding(padding: new EdgeInsets.symmetric(vertical: 6.0)),
          new Text(
            'Name : $name',
            style: Theme.of(context).textTheme.headline,
          ),
          new Padding(padding: new EdgeInsets.symmetric(vertical: 6.0)),
          new Text(
            'Username : $username',
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Fetch JSON'),
        ),
        body: !isData
            ? new Center(
                child: new CircularProgressIndicator(),
              )
            : MyUI(),
      ),
    );
  }
}
