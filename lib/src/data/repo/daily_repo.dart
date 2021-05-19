import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/daily_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/service/weather_service.dart';

class DailyRepo {
  WeatherService _weatherService;

  DailyRepo({@required WeatherService weatherService})
      : _weatherService = weatherService;

  Future<List<Daily>> getDailyList(DailyNotifier dailyNotifier) async {
    var c = Completer<List<Daily>>();
    try {
      var response = await WeatherService.getWeatherList();
      var dataWeather = Weather.fromJson(response.data);
      var dailyList = dataWeather.daily.toList();
      dailyNotifier.setDailyList(dailyList);
      c.complete(dailyList);
    } on DioError {
      c.completeError('Không có dữ liệu');
    } catch (e) {
      c.completeError(e);
    }
    return c.future;
  }
}
