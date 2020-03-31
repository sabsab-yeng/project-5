import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/management/management_menu_page.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  _AlertDialogPageState createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert dialog page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Click to show dialog message"),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  //set up the button
  Widget okButton() {
    return FlatButton(
      child: Text("ຕົກລົງ"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Widget cancelButton() {
    return FlatButton(
      child: Text("ຍົກເລີກ"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ManagementMenuPage()));
      },
    );
  }

  //set up the alertDialog
  AlertDialog alertDialog = AlertDialog(
    title: Text("ແຈ້ງເຕືອນ"),
    content: Text("ທ່ານຕ້ອງການອອກຈາກໜ້ານີ້ ຫຼື ບໍ?"),
    actions: <Widget>[
      cancelButton(),
      okButton(),
    ],
  );

  //ShowDialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}
