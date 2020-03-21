import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/login/login_page.dart';
import 'package:ss_flutter_dev/ui/text_file.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

