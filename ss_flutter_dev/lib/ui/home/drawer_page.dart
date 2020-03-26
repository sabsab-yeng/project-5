import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/management/management_menu_page.dart';
import 'package:ss_flutter_dev/ui/search/search_page2.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    "images/user.png",
                    height: 80,
                    width: 80,
                  ),
                  Text(
                    "Drawer header",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.data_usage),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ຈັດການຂໍ້ມູນ', style: drawerMenuStyle),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ManagementMenuPage()));
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.event_available),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ປະເມີນ', style: drawerMenuStyle),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.remove_shopping_cart),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ລົງທະບຽນ', style: drawerMenuStyle),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.report),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ລາຍງານ', style: drawerMenuStyle),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ຄົ້ນຫາ', style: drawerMenuStyle),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPageMenu()));
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.question_answer),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ກ່ຽວກັບລະບົບ', style: drawerMenuStyle),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
