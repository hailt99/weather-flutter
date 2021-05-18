import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/components/current/current_view_model.dart';
import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';

class HourlyView extends StatefulWidget {
  final Current current;

  HourlyView({@required this.current});

  @override
  _CurrentViewState createState() => _CurrentViewState(current);
}

class _CurrentViewState extends State<HourlyView> {
  Current current;
  CurrentViewModel currentViewModel;

  _CurrentViewState(this.current) {
    currentViewModel = new CurrentViewModel();
    currentViewModel.setCurrent(current);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${(currentViewModel.current.temp - 273).toInt()}"),
          Text("${(currentViewModel.current.dt)}"),
        ],
      ),
    );
  }
}
