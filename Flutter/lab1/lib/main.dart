import 'package:flutter/material.dart';

import 'question.dart';

void main() {
  runApp(MyApp());
}

// build screen ui mobile with scaffold

// children in widget  is mean can have many widget

// child in widget is mean can have one widget

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _quiestionIndex = 0;

  void _onPress() {
    print('hello');
    setState(() {
      _quiestionIndex = (_quiestionIndex + 1) % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = ['who is your daddy', 'who is your mom'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First Apps'),
      ),
      body: Column(
        children: <Widget>[
          Question(question[_quiestionIndex]),
          RaisedButton(
            child: Text('Justin'),
            onPressed: () => {print('justin')},
          ),
          RaisedButton(
            onPressed: _onPress,
            child: Text('use out source function'),
          ),
          Text('hello'),
        ],
      ),
    ));
  }
}
