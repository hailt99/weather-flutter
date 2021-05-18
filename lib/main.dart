import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/daily_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/hourly_notifier/hourly_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/screen/homeview/homeview.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DailyNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => HourlyNotifier(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
