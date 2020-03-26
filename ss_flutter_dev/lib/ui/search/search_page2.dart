import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';

class SearchPageMenu extends StatefulWidget {
  @override
  _SearchPageMenuState createState() => _SearchPageMenuState();
}

class _SearchPageMenuState extends State<SearchPageMenu> {
  final TextEditingController _editingController = TextEditingController();

  Icon actionIcon = Icon(
    Icons.search,
  );

  Widget appBarTitle = Text(
    "ຄົ້ນຫາ",
    style: TextStyle(color: Colors.black),
  );

  bool isSearching;
  String searchText = "";

  @override
  void initState() {
    super.initState();
    isSearching = false;
  }

  _SearchPageMenuState() {
    _editingController.addListener(() {
      if (_editingController.text.isEmpty) {
        setState(() {
          isSearching = false;
          searchText = "";
        });
      } else {
        setState(() {
          isSearching = true;
          searchText = _editingController.text;
        });
      }
    });
  }

  Widget appBarBuild(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: appBarColors,
      iconTheme: IconThemeData(color: Colors.black),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = Icon(Icons.close);
                this.appBarTitle = TextField(
                  controller: _editingController,
                  decoration: InputDecoration(hintText: "ຄົ້ນຫາ..."),
                );
                setState(() {
                  isSearching = true;
                });
              }else{
                setState(() {
                  this.actionIcon = Icon(Icons.search);
                  this.appBarTitle = Text("");
                  isSearching = false;
                  _editingController.clear();
                });
              }
            });
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuild(context),
    );
  }
}
