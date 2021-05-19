import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/components/current/current_view.dart';
import 'package:flutter_app_thoi_tiet/src/components/dailys/daily_view.dart';
import 'package:flutter_app_thoi_tiet/src/components/hourlys/hourly_view.dart';
import 'package:flutter_app_thoi_tiet/src/menu/drawer_menu.dart';
import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/daily_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/hourly_notifier/hourly_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/service/http_client.dart';
import 'package:flutter_app_thoi_tiet/src/service/httpserver.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    DailyNotifier dailyNotifier =
        Provider.of<DailyNotifier>(context, listen: false);
    HourlyNotifier hourlyNotifier =
        Provider.of<HourlyNotifier>(context, listen: false);
    getData(dailyNotifier, hourlyNotifier);
    super.initState();
  }

  Future getData(
      DailyNotifier dailyNotifier, HourlyNotifier hourlyNotifier) async {
    Response response;
    Weather dataWeather;
    List<Daily> dailys;
    List<Current> hourlys;

    try {
      response = await HttpClient.instance.dio.get("/hourlyweather.json");

      if (response.statusCode == 200) {
        dataWeather = Weather.fromJson(response.data);
        dailys = dataWeather.daily.toList();
        hourlys = dataWeather.hourly.toList();
        dailyNotifier.setDailyList(dailys);
        hourlyNotifier.setHourlyList(hourlys);
      } else {
        print("Not status 200");
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    DailyNotifier dailyNotifier = Provider.of<DailyNotifier>(context);
    HourlyNotifier hourlyNotifier = Provider.of<HourlyNotifier>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("New"),
        ),
        drawer: DrawerMenu(),
        body: (dailyNotifier != null) && (hourlyNotifier != null)
            ? Container(
                child: ListView(
                  children: [
                    Center(
                        child: CurrentView(
                            current: hourlyNotifier.getHourlyList()[0])),
                    Container(
                      height: 400,
                      color: Colors.white,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hourlyNotifier.getHourlyList().length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.all(5),
                            child: HourlyView(
                              current: hourlyNotifier.getHourlyList()[index],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 400,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dailyNotifier.getDailyList().length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.all(5),
                            child: DailyView(
                              daily: dailyNotifier.getDailyList()[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
