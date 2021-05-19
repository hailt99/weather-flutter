import 'package:flutter/material.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/daily_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/notifiers/hourly_notifier/hourly_notifier.dart';
import 'package:flutter_app_thoi_tiet/src/screen/background/backgound_view.dart';
import 'package:flutter_app_thoi_tiet/src/screen/homeview/homeview.dart';
import 'package:flutter_app_thoi_tiet/src/screen/location/location.dart';
import 'package:flutter_app_thoi_tiet/src/screen/notify/notify_view.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
        '/notify': (context) => NotifyView(),
        '/background': (context) => BackgroundView(),
        '/add_location': (context) => LocationView(),
        '/unit': (context) => LocationView(),
      },
    );
  }
}
