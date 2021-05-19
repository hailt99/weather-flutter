import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/menu/drawer_menu.dart';

class LocationView extends StatefulWidget {
  @override
  _LocationViewState createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
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
