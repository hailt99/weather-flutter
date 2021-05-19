import 'package:intl/intl.dart';

class DatatimeUTC {
  DateTime dateTime;

  static void getTimeUTC(int timeunix) {
    DateTime.fromMicrosecondsSinceEpoch(timeunix * 1000);
  }

  static void getTimeYMD(DateTime dateTime) {
    DateFormat.yMd().format(dateTime);
  }

  static void getTimeDay(DateTime dateTime) {
    DateFormat.Hm().format(dateTime);
  }
}
