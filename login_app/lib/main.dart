import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lightGreen),
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();

    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceIn);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage(
              "assets/loginImage.jpg",
            ),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 150.00,
              ),
              new Theme(
                data: new ThemeData(
                  primarySwatch: Colors.teal,
                  brightness: Brightness.light,
                  textTheme: Theme.of(context).textTheme.apply(
                        bodyColor: Colors.white70,
                      ),
                  inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.cyan,
                        fontSize: 20.00,
                      ),
                      hintStyle: new TextStyle(
                        color: Colors.lightGreen,
                      )),
                ),
                child: new Container(
                  padding:
                      const EdgeInsets.fromLTRB(40.00, 20.00, 40.00,00.00),
                  child: new Form(
                    child: new Column(
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(top: 15.00),
                        ),
                        new MaterialButton(onPressed: () => {},child: new Text("Log In"),textColor: Colors.white70,color: Colors.cyan,splashColor: Colors.cyanAccent,highlightColor: Colors.cyanAccent,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}