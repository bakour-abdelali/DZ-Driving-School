import 'dart:async';

import 'package:ahmed/main.dart';

Future<void> scheduleDailyNotification() async {
  print("جاري التنفقيذ");
  // print(Task);
  // const int notificationId = 0;
  final DateTime now = DateTime.now();

  final DateTime scheduledDate = DateTime(
    now.year,
    now.month,
    now.day,
    sharedPreferences.getInt("hour")!,
    sharedPreferences.getInt("minit")!,
  );
  // Workmanager().cancelAll();

  // Workmanager().registerPeriodicTask(
  //   'key', // اسم المهمة الدورية
  //   'taskDefination', // وصف المهمة الدورية
  //   frequency: Duration(
  //     hours: 24 - DateTime.now().hour + scheduledDate.hour, //
  //     minutes: 60 - DateTime.now().minute + scheduledDate.minute, //
  //   ),
  //   initialDelay: Duration(
  //       hours: scheduledDate.hour - DateTime.now().hour,
  //       minutes: scheduledDate.minute - DateTime.now().minute),
  // );

  print(sharedPreferences.getInt("hour"));
  print(sharedPreferences.getInt("minit"));
  int k = now.hour;
  print('hello$k');
  print(scheduledDate);
}

void callbackDispatcher() async {
  // Workmanager().executeTask(
  //   (task, inputData) async {
  //     print("--> scheduleDailyNotification");
  //     print(task);
  //     await AwesomeNotifications().createNotification(
  //       content: NotificationContent(
  //         id: 0,
  //         channelKey: "channel_id",
  //         color: primaryColor,
  //         fullScreenIntent: true,
  //         backgroundColor: Colors.green,
  //         title: "انه  وقت التعلم",
  //         body: "أحمد يدعوك الى استثمار وقتك لتعلم بعض قواعد و اشارات المرور",
  //         wakeUpScreen: true,
  //         criticalAlert: true,
  //         autoDismissible: true,
  //         displayOnForeground: true,
  //       ),
  //     );
  //     // await scheduleDailyNotification(task);
  //     print('hello executeTask');
  //     return Future.value(true);
  //   },
  // );
}
