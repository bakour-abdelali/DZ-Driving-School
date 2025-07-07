import 'package:ahmed/view/questions_screen.dart';
import 'package:ahmed/view/test_screen.dart';
import 'package:ahmed/view/traffic_lights_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../main.dart';

class ControlesScreen extends GetxController {
  bool modeDarc = sharedPreferences.getBool('mode') ??
      false; //=null?sharedPreferences!.getBool('mode'):false;
  int indexScreen = 0;

  List<Widget> screen = [
    TrafficLightsScreen(),
    //TrafficRulesScreen(),
    const QuestionsScreen(),
    TestScreen(),
  ];
  List<String> titleAppBar = [
    'اشارات',
    // 'الأولوية',
    'أسِئلة',
    'اختبار',
  ];

  void changInade(int value) {
    indexScreen = value;
    update();
  }

  void changeMoad() {
    modeDarc = !modeDarc;
    sharedPreferences.setBool('mode', modeDarc);
    update();
  }
}
