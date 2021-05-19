import 'package:dio/dio.dart';
import 'package:flutter_app_thoi_tiet/src/service/http_client.dart';

class WeatherService {
  static Future<Response> getWeatherList() {
    return HttpClient.instance.dio.get(
      '/hourlyweather.json',
    );
  }
}
