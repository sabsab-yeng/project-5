import 'package:flutter/material.dart';

import '../ui_const.dart';

class ManageWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  ManageWidget({this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: InkWell(
        onTap: () {
          if(onTap != null){
            onTap();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: menuStyle,
            ),
            Icon(Icons.navigate_next),
          ],
        ),
      ),
    );
  }
}
