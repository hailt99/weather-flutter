import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';

class CurrentViewModel {
  Current _current;

  setCurrent(Current current) {
    _current = current;
  }

  Current get current => _current;
}
