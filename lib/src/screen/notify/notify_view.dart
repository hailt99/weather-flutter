import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/menu/drawer_menu.dart';

class NotifyView extends StatefulWidget {
  @override
  _NotifyViewState createState() => _NotifyViewState();
}

class _NotifyViewState extends State<NotifyView> {
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
