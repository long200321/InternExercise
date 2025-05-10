import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';
class NotificationService  {
  static FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();
  static StreamController<NotificationResponse> streamController = StreamController();
  static void onTap(NotificationResponse response){
    streamController.add(response);
  }
  static Future<void> init() async {
    InitializationSettings settings = InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
    );
    notificationsPlugin.initialize(settings,
    onDidReceiveBackgroundNotificationResponse: onTap,
    onDidReceiveNotificationResponse: onTap);
  }
  static void showNotification()async{
    NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails('channelId', 'channelName',sound: RawResourceAndroidNotificationSound('sound'),priority: Priority.max,importance: Importance.max)
    );
    await notificationsPlugin.show(0, 'title', 'body', details,payload: 'basic noti');
  }
  static void showRepeatNotification()async{
    NotificationDetails details = NotificationDetails(
        android: AndroidNotificationDetails('channelId2', 'channelName2',priority: Priority.max,importance: Importance.max)
    );
    await notificationsPlugin.periodicallyShow(1, 'repeatNoti', 'body', RepeatInterval.everyMinute,details,androidScheduleMode: AndroidScheduleMode.exact,payload: 'RepeatNoti', );
  }
  static void showScheduledNotification()async{

    NotificationDetails details = NotificationDetails(
        android: AndroidNotificationDetails('channelId3', 'channelName3',priority: Priority.max,importance: Importance.max)
    );
    tz.initializeTimeZones();
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
    print(tz.local.name);
    print("${tz.TZDateTime.now(tz.local).hour}");
    await notificationsPlugin.zonedSchedule(2,
        'Scheduled',
        'body',
        tz.TZDateTime.now(tz.local).add(Duration(seconds: 1)),
        //tz.TZDateTime(tz.local,2025,5,8,14,40),
        details,
        androidScheduleMode: AndroidScheduleMode.exact,
      payload: 'ScheduledNoti',);
  }
  static void cancelNoti()async{
    await notificationsPlugin.cancel(1);
  }
}