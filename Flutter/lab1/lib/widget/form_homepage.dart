import 'package:flutter/material.dart';

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
