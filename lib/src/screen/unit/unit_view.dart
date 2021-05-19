import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/menu/drawer_menu.dart';

class UnitView extends StatefulWidget {
  @override
  _UnitViewState createState() => _UnitViewState();
}

class _UnitViewState extends State<UnitView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ngày Của Bạn"),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Text("Ngày Của Bạn"),
      ),
    );
  }
}
