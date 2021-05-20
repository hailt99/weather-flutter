import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/components/setting/setting_unit.dart';
import 'package:flutter_app_thoi_tiet/src/menu/drawer_menu.dart';
import 'package:flutter_app_thoi_tiet/src/units/tempunits.dart';
import 'package:provider/provider.dart';

class UnitView extends StatefulWidget {
  @override
  _UnitViewState createState() => _UnitViewState();
}

class _UnitViewState extends State<UnitView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Don vi"),
      ),
      drawer: DrawerMenu(),
      body: Consumer<SettingUnits>(builder: (context, units, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
              child: Text(
                "Unit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                color: Colors.blueAccent,
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Celsius",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
            ),
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Fahrenheit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Radio(
                    value: TemperatureUnit.fahrenheit.index,
                    groupValue: units.tempunits,
                    onChanged: (value) {
                      units.temp = value;
                    },
                    activeColor: Colors.lightBlue,
                  )
                ],
              ),
            ),
            Divider(
              height: 1,
            ),
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Kelvin",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Radio(
                    value: TemperatureUnit.kelvin.index,
                    groupValue: units.tempunits,
                    onChanged: (value) {
                      units.temp = value;
                    },
                    activeColor: Colors.lightBlue,
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
