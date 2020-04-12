import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/day10/hero_animation_page.dart';
import 'package:ss_flutter_dev/ui/day10/hero_radial_page.dart';
import 'package:ss_flutter_dev/ui/day9/alertdialog_page.dart';
import 'package:ss_flutter_dev/ui/day9/snack_bar.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';
import 'package:ss_flutter_dev/ui/widgets/mange_widget.dart';

class ManagementMenuPage extends StatefulWidget {
  @override
  _ManagementMenuPageState createState() => _ManagementMenuPageState();
}

class _ManagementMenuPageState extends State<ManagementMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColors,
        centerTitle: true,
        title: Text(
          "ຈັດການຂໍ້ມູນ",
          style: appBarStyles,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ManageWidget(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SnackBarPage()));
                },
                title: "ສະແດງຂໍ້ຄວາມ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlertDialogPage()));
                },
                title: "ສະແດງຂໍ້ຄວາມຂື້ນມາໜ້າຈໍ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeroAnimationPage()));
                },
                title: "Hero animation",
              ),
              Divider(),
              ManageWidget(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HeroRadiaPage()));
                },
                title: "Hero Radial",
              ),
              Divider(),
              ManageWidget(
                onTap: () {},
                title: "ຂໍ້ມູນສົກຮຽນ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {},
                title: "ຂໍ້ມູນບ້ານ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {},
                title: "ຂໍ້ມູນເມືອງ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {},
                title: "ຂໍ້ມູນແຂວງ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {},
                title: "ຂໍ້ມູນພາກວິຊາ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {},
                title: "ຂໍ້ມູນວຸດທີການສຶກສາ",
              ),
              Divider(),
              ManageWidget(
                onTap: () {},
                title: "ຂໍ້ມູນຕໍາແໜ່ງ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}