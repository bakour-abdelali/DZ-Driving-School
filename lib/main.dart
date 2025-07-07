import 'package:ahmed/controler/controles_screen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'conpanes/themes.dart';
// import 'const/funcion/time_learn_fuction.dart';
import 'view/my_home_screen_page.dart';

// import 'package:workmanager/workmanager.dart';

late final SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //resource://drawable/lettera.png
  AwesomeNotifications().initialize("resource://drawable/solvent", [
    NotificationChannel(
      channelKey: 'channel_id',
      channelName: 'test channelName',
      channelDescription: 'channelDescription',
      playSound: true,
      channelShowBadge: true,
      importance: NotificationImportance.High,
      enableLights: true,
    )
  ]);
  sharedPreferences = await SharedPreferences.getInstance();
  // Workmanager().initialize(
  //   callbackDispatcher,
  //   isInDebugMode: false,
  // );

  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  ControlesScreen controlesScreen = Get.put(ControlesScreen());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlesScreen>(builder: (context) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: context.modeDarc ? Themes.isDarcMode : Themes.isLightMode,
          locale: const Locale.fromSubtags(languageCode: 'ar'),
          home:
              //WorkMangerTest(),
              // Notfication()
              //TestNumberScreen(),
              MyHomePage()
          //TextToSpeech(),
          // FinshLaernScreen(
          //   isNew: false,
          // )
          );
    });
  }
}
