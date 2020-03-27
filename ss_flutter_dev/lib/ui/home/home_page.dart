import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/home/drawer_page.dart';
import 'package:ss_flutter_dev/ui/search/search_page2.dart';
import 'package:ss_flutter_dev/ui/settings/setting_page.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _curentIndex = 0;
  final List<Widget> _childList =[
    PlaceHolderPage(color: appBarColors),
    SearchPageMenu(),
    SettingsPage(),
  ];


  void onTapp(int index){
    setState(() {
      _curentIndex  = index;
    });
  }

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curentIndex,
        onTap: onTapp,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text("Settings"),
          ),
        ],
      ),
      body: _childList[_curentIndex],
    );
  }
}

class PlaceHolderPage extends StatelessWidget {
  final Color color;
  PlaceHolderPage({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
