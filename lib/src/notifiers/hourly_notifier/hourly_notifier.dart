import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';

class HourlyNotifier with ChangeNotifier {
  List<Current> _hourlyList = [];

  addHourlyToList(Current current) {
    _hourlyList.add(current);
    notifyListeners();
  }

  setHourlyList(List<Current> hourlyList) {
    _hourlyList = [];
    _hourlyList = hourlyList;
    notifyListeners();
  }

  List<Current> getHourlyList() {
    return _hourlyList;
  }
}
