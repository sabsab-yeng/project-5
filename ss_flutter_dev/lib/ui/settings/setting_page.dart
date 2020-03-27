import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/user.png",
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 40,
              ),
              Text("ຊື່: ເຢັ່ງມົວ " + "ນາມສະກຸນ: ຢົງປໍ"),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Personal Info:",
                      style: drawerMenuStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ເບີໂທ: 02091124429",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ບ້ານ: ໜອງໜ້ຽວ",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ເມືອງ: ສີໂຄດຕະບອງ",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ແຂວງ: ນະຄອນຫຼວງວຽງຈັນ",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Wordk Info:",
                      style: drawerMenuStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ເບີໂທ: 02091124429",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ບ້ານ: ໜອງໜ້ຽວ",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ເມືອງ: ສີໂຄດຕະບອງ",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ແຂວງ: ນະຄອນຫຼວງວຽງຈັນ",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
