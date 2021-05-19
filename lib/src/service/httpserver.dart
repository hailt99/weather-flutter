// import 'package:dio/dio.dart';
// import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';
// import 'package:flutter_app_thoi_tiet/src/notifiers/daily_notifier.dart';
// import 'package:flutter_app_thoi_tiet/src/notifiers/hourly_notifier/hourly_notifier.dart';
//
// class HttpSever {
//   static Future getData(
//       DailyNotifier dailyNotifier, HourlyNotifier hourlyNotifier) async {
//     Response response;
//     Weather dataWeather;
//     List<Daily> dailys;
//     List<Current> hourlys;
//
//     try {
//       response = await Dio().get("http://172.16.0.94:8001/hourlyweather.json");
//
//       if (response.statusCode == 200) {
//         dataWeather = Weather.fromJson(response.data);
//         print(response.data);
//         dailys = dataWeather.daily.toList();
//         hourlys = dataWeather.hourly.toList();
//         dailyNotifier.setDailyList(dailys);
//         hourlyNotifier.setHourlyList(hourlys);
//       } else {
//         print("Not status 200");
//       }
//     } on Exception catch (e) {
//       print(e);
//     }
//   }
// }
