import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Center(
        child: RaisedButton(
          child: Text("Click me"),
          onPressed: () {
            final snackBar = SnackBar(
              content: Text("Click me"),
            );
            _globalKey.currentState.showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}
