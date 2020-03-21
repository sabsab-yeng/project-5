import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'User',
                  hintStyle:
                      TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  labelText: "User",
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            ),
            TextField(
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(hintText: 'Password', labelText: 'Password'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
