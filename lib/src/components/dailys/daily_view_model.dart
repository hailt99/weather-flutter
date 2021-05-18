import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';

class DailyViewModel {
  Daily _daily;

  setDaily(Daily daily) {
    _daily = daily;
  }

  Daily get daily => _daily;
}
