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

class FormHomePage extends StatelessWidget {
  var amountcontroller = TextEditingController();
  var titlecontroller = TextEditingController();

  Function addtransaction;

  void onClickSummit(context) {
    String title = "สำเร็จ";
    String message = "เรากำลังสร้าง บรรทึกใหม่ให้คุณ";

    if (amountcontroller.text.length == 0 && titlecontroller.text.length == 0) {
      title = "คุณไม่ได้กรอก title กับ amount";
      message = 'กรุณากรอกให้ครบ';
    } else {
      addtransaction(titlecontroller.text, double.parse(amountcontroller.text));
    }

    showAlertDialog(context, title, message);
  }

  FormHomePage(this.addtransaction);

  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(
        decoration: InputDecoration(labelText: 'title'),
        controller: titlecontroller,
      ),
      TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'amount'),
        controller: amountcontroller,
      ),
      FlatButton(
          color: Colors.lightBlue,
          onPressed: () => {onClickSummit(context)},
          child: Text('Sumit'))
    ]);
  }

  showAlertDialog(BuildContext context, String title, String text) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(text),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
