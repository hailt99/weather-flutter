import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/components/dailys/daily_view_model.dart';
import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';

class DailyView extends StatefulWidget {
  final Daily daily;

  const DailyView({Key key, this.daily}) : super(key: key);

  @override
  _DailyViewState createState() => _DailyViewState(daily);
}

class _DailyViewState extends State<DailyView> {
  Daily daily;
  DailyViewModel dailyViewModel;
  _DailyViewState(this.daily) {
    dailyViewModel = new DailyViewModel();
    dailyViewModel.setDaily(daily);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${(dailyViewModel.daily.temp.max - 273).toInt()}"),
          Text("${(dailyViewModel.daily.temp.min - 273).toInt()}"),
          Text("${(dailyViewModel.daily.dt)}"),
        ],
      ),
    );
  }
}
