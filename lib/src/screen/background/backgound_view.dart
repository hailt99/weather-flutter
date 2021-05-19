import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/menu/drawer_menu.dart';

class BackgroundView extends StatefulWidget {
  @override
  _BackgroundViewState createState() => _BackgroundViewState();
}

class _BackgroundViewState extends State<BackgroundView> {
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
