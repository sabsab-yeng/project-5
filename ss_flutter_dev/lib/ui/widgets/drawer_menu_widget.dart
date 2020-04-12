import 'package:flutter/material.dart';

import '../ui_const.dart';

class DrawerMenuWidget extends StatelessWidget {

  final String title;
  final IconData icon;
  // final Function onTap;
  final VoidCallback onTap;

  DrawerMenuWidget({this.icon, this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(title, style: drawerMenuStyle),
        ],
      ),
      onTap: () {
        if(onTap != null){
          onTap();
        }
      },
    );
  }
}
