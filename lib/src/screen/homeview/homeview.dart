import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/components/current/current_view.dart';
import 'package:flutter_app_thoi_tiet/src/components/dailys/daily_view.dart';
import 'package:flutter_app_thoi_tiet/src/components/hourlys/hourly_view.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/daily_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/hourly_notifier/hourly_notifier.dart';
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
    HttpSever.getData(dailyNotifier, hourlyNotifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DailyNotifier dailyNotifier = Provider.of<DailyNotifier>(context);
    HourlyNotifier hourlyNotifier = Provider.of<HourlyNotifier>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("New"),
        ),
        body: (dailyNotifier != null) && (hourlyNotifier != null)
            ? Container(
                child: ListView(
                  children: [
                    CurrentView(current: hourlyNotifier.getHourlyList()[0]),
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
