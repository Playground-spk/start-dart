import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

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
  var amountcontroller = TextEditingController();
  var titlecontroller;

  final List<Transaction> transactions = [
    Transaction(id: '1', title: 'one', amount: 30, date: DateTime.now()),
    Transaction(id: '2', title: 'two', amount: 15, date: DateTime.now())
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My test'),
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              decoration: InputDecoration(labelText: 'title'),
              controller: titlecontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'amount'),
              controller: amountcontroller,
            ),
            FlatButton(
                onPressed: () => {print(amountcontroller.text)},
                child: Text('Sumit')),
            ...transactions.map((e) {
              return Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.album),
                      title: Text(e.title),
                      subtitle: Text(e.id),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text(e.amount.toString()),
                          onPressed: () {/* ... */},
                        ),
                        FlatButton(
                          child: Text(new DateFormat.yMMMd().format(e.date)),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList()
          ]),
        ));
  }
}
