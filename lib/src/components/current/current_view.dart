import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/components/current/current_view_model.dart';
import 'package:flutter_app_thoi_tiet/src/model/weather/weather.dart';

class CurrentView extends StatefulWidget {
  final Current current;

  CurrentView({@required this.current});

  @override
  State createState() => _CurrentViewState(current);
}

class _CurrentViewState extends State<CurrentView> {
  Current current;
  CurrentViewModel currentViewModel;

  _CurrentViewState(this.current) {
    currentViewModel = new CurrentViewModel();
    currentViewModel.setCurrent(current);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.all(
            Radius.circular(200),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${(currentViewModel.current.temp - 273).toInt()}",
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  "ºC",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Text("${currentViewModel.current.weather[0].description}"),
            Text("${currentViewModel.current.dt}")
          ],
        ),
      ),
    );
  }
}
