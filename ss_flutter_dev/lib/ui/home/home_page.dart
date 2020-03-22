import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/home/drawer_page.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: appBarColors,
        elevation: 0,
        title: Text(
          'Home Page',
          style: appBarStyles,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: DrawerPage(),
    );
  }
}
