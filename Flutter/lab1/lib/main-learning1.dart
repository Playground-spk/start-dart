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

  void _onPress(name) {
    if (_quiestionIndex == 0) {
      if (name == 'toong') {
        print('ถูกต้อง');
      } else
        print('ผิด');
    }
    if (_quiestionIndex == 1) {
      if (name == 'Lek') {
        print('ถูกต้อง');
      } else
        print('ผิด');
    }

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
            child: Text('toong'),
            onPressed: () => _onPress('toong'),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: RaisedButton(
              onPressed: () => _onPress('Lek'),
              child: Text('Lek'),
            ),
          ),
        ],
      ),
    ));
  }
}
