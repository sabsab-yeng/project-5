import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/day9/alertdialog_page.dart';
import 'package:ss_flutter_dev/ui/day9/snack_bar.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';

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
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SnackBarPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ສະແດງຂໍ້ຄວາມ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AlertDialogPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ສະແດງຂໍ້ຄວາມຂື້ນມາໜ້າຈໍ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນວິຊາ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນຄະແນນ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນສົກຮຽນ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນບ້ານ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນເມືອງ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນແຂວງ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນພາກວິຊາ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນວຸດທີການສຶກສາ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ຂໍ້ມູນຕໍາແໜ່ງ",
                        style: menuStyle,
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
