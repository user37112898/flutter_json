import 'package:flutter/material.dart';
import 'package:demochatapp/ChatMessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController =
      new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textEditingController.clear();
    ChatMessage chatMessage = new ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, chatMessage);
    });
  }

  Widget _textComposerWidget() {
    return new Container(
        margin: EdgeInsets.symmetric(horizontal: 10.00),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: InputDecoration(
                  hintText: "write text here..",
                ),
                controller: _textEditingController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            new Container(
              margin: EdgeInsets.symmetric(horizontal: 5.00),
              child:
                  //IconButton(icon: new Icon(Icons.send), onPressed: () => _handleSubmitted(_textEditingController.text),color: Colors.lightBlue,
                  IconTheme(
                data: new IconThemeData(opacity: 0.25),
                child: new IconButton(
                    icon: new Icon(Icons.send),
                    onPressed: () =>
                        _handleSubmitted(_textEditingController.text)),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: EdgeInsets.all(10.00),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(
          height: 1.0,
        ),
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
