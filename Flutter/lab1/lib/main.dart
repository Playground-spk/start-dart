import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My test'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Card(
                  color: Colors.deepOrange,
                  child: Text('List of Row'),
                ),
                Card(
                  color: Colors.deepOrange,
                  child: Text('List of Row'),
                ),
                Card(
                  color: Colors.deepOrange,
                  child: Text('List of Row'),
                ),
              ],
            ),
            Card(
              color: Colors.deepOrange,
              child: Text('List of Col'),
            ),
            Card(
              color: Colors.deepOrange,
              child: Text('List of Col'),
            ),
            Card(
              color: Colors.deepOrange,
              child: Text('List of Col'),
            ),
            Card(
              color: Colors.deepOrange,
              child: Text('List of Col'),
            )
          ],
        ));
  }
}
