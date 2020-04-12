import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/management/management_menu_page.dart';
import 'package:ss_flutter_dev/ui/search/search_page2.dart';
import 'package:ss_flutter_dev/ui/widgets/drawer_menu_widget.dart';

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
            DrawerMenuWidget(
              title: "ຈັດການຂໍ້ມູນ",
              icon: Icons.data_usage,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ManagementMenuPage()));
              },
            ),
            DrawerMenuWidget(
              title: "ປະເມີນ",
              icon: Icons.event_available,
              onTap: () {},
            ),
            DrawerMenuWidget(
              title: "ລົງທະບຽນ",
              icon: Icons.remove_shopping_cart,
              onTap: () {},
            ),
            DrawerMenuWidget(
              title: "ລາຍງານ",
              icon: Icons.report,
              onTap: () {},
            ),
            DrawerMenuWidget(
              title: "ຄົ້ນຫາ",
              icon: Icons.search,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPageMenu()));
              },
            ),
            DrawerMenuWidget(
              title: "ກ່ຽວກັບລະບົບ",
              icon: Icons.question_answer,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}