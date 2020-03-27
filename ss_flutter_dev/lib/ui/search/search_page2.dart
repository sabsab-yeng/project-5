import 'package:flutter/material.dart';
import 'package:ss_flutter_dev/ui/ui_const.dart';

class SearchPageMenu extends StatefulWidget {
  @override
  _SearchPageMenuState createState() => _SearchPageMenuState();
}

class _SearchPageMenuState extends State<SearchPageMenu> {
  final TextEditingController _editingController = TextEditingController();

  List<String> _list;

  final key = GlobalKey<ScaffoldState> ();

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
    initData();
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
              } else {
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

  void initData() {
    _list = List();
    _list.add("Google");
    _list.add("Macbook");
    _list.add("Windows");
    _list.add("Iphone");
    _list.add("Samsung");
    _list.add("Oppo");
    _list.add("Vivo");
    _list.add("Phyton");
    _list.add("Dart");
    _list.add("Flutter");
    _list.add("Java");
    _list.add("PHP");
    _list.add("Emulator");
    _list.add("IOS");
    _list.add("Linux");
    _list.add("Line");
    _list.add("Facebook");
    _list.add("Youtube");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: appBarBuild(context),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: isSearching ? _buildSearchList() : _buildList(),
      ),
    );
  }
  List<ChildItem> _buildList(){
    return _list.map((contact) => ChildItem(contact)).toList();
  }

  List<ChildItem>  _buildSearchList(){
    if(searchText.isEmpty){
      return _list.map((contact)=> ChildItem(contact)).toList();
    }else{
      List<String> _searchList = List();
      for(int i=0; i<_list.length; i++){
        String name = _list.elementAt(i);
        if(name.toLowerCase().contains(searchText.toLowerCase())){
          _searchList.add(name);
        }
      }
      return _searchList.map((contact)=> ChildItem(contact)).toList();
    }
    
  }
}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.name),
    );
  }
}