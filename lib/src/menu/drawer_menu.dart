import 'package:flutter/material.dart';

const kTitle = 'Menu';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                kTitle,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.title.fontSize,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          getListTile('Home', onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          getLine(),
          getListTile('Cài đặt đơn vị', onTap: () {
            Navigator.pushReplacementNamed(context, '/unit');
          }),
          getLine(),
          getListTile('Thêm vị trí', onTap: () {
            Navigator.pushReplacementNamed(context, '/add_location');
          }),
          getLine(),
          getListTile('Ngày cho bạn', onTap: () {
            Navigator.pushReplacementNamed(context, '/notify');
          }),
          getListTile('Share', onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          getListTile('Nhiều tiện ích hơn ', onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          getListTile('Phản hồi của bạn  ', onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          getListTile('Trân trọng cảm ơn', onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          }),
        ],
      ),
    );
  }

  Widget getLine() {
    return SizedBox(
      height: 0.5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Widget getListTile(title, {Function onTap}) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
