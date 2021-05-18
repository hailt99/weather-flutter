import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';

class DailyNotifier with ChangeNotifier {
  List<Daily> _dailyList = [];

  addDailyToList(Daily daily) {
    _dailyList.add(daily);
    notifyListeners();
  }

  setDailyList(List<Daily> dailyList) {
    _dailyList = [];
    _dailyList = dailyList;
    notifyListeners();
  }

  List<Daily> getDailyList() {
    return _dailyList;
  }
}
