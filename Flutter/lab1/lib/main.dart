import 'package:flutter/material.dart';
import 'package:lab1/widget/content_homepage.dart';

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
        body: SingleChildScrollView(
          child: ContentHomepage(),
        ));
  }
}
