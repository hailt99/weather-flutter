import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/units/tempunits.dart';

class SettingUnits with ChangeNotifier {
  double _temp;

  set temp(newValue) {
    _temp = newValue;
    notifyListeners();
  }

  double get tempC => _temp - 273;
  double get tempF => _temp;
  double get tempK => _temp * (9 / 5) - 459.67;
  double get tempunits => _temp;
}
