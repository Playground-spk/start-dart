import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

import './form_homepage.dart';

class ContentHomepage extends StatefulWidget {
  _ContentHomepage createState() => _ContentHomepage();
}

class _ContentHomepage extends State<ContentHomepage> {
  final List<Transaction> _transactions = [
    Transaction(id: '1', title: 'one', amount: 30, date: DateTime.now()),
    Transaction(id: '2', title: 'two', amount: 15, date: DateTime.now())
  ];

  void addTransaction(String title, double amount) {
    setState(() {
      _transactions.add(Transaction(
          id: (_transactions.length + 1).toString(),
          title: title,
          amount: amount,
          date: DateTime.now()));
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        FormHomePage(addTransaction),
        ..._transactions.map(
          (tx) => Card(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Id ' + tx.id),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text(tx.title),
                  subtitle: Text(tx.amount.toString()),
                ),
                Text(DateFormat("dd-MM-yyyy").format(tx.date))
              ],
            ),
          ),
        )
      ],
    );
  }
}
