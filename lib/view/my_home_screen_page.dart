import 'dart:io';

import 'package:ahmed/conpanes/themes.dart';
import 'package:ahmed/controler/controles_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controler/trafic_next_controler.dart';

import 'drawer/my_drawer.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  ControlesScreen controlesScreen = Get.put(ControlesScreen());
  TraficNextControler nextControler = Get.find<TraficNextControler>();

  MyHomePage({super.key});
  onBack() async {
    await Get.defaultDialog(
        title: 'هل تريد الخروج ؟',
        textCustom: '',
        middleText: '',
        textCancel: 'لا',
        textConfirm: 'نعم',
        radius: 30,
        cancelTextColor: Colors.black,
        confirmTextColor: Colors.black,
        onConfirm: () {
          exit(0);
        },
        onCancel: () {
          Get.back();
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBack(),
      child: Scaffold(
        drawer: MyDrawer(),
        bottomNavigationBar: GetBuilder<ControlesScreen>(
          builder: (c) {
            return CurvedNavigationBar(
              index: controlesScreen.indexScreen,
              height: 60,
              onTap: ((value) {
                controlesScreen.changInade(value);
                print(controlesScreen.indexScreen);
              }),
              color: c.modeDarc ? Colors.grey : Color(0xFF00d565),
              animationDuration: Duration(milliseconds: 500),
              backgroundColor: !c.modeDarc ? Colors.white : Colors.black,
              buttonBackgroundColor: Colors.greenAccent[900],
              items: [
                Image.asset('images/traffic-lights.png'),
                // Image.asset('images/traffic-rules.png'),
                Image.asset('images/question.png'),
                Image.asset('images/exam-results.png'),
              ],
            );
          },
        ),
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () {
                Get.defaultDialog(
                    title: 'نقاطك',
                    middleText:
                        'تملك حاليا ${nextControler.note}نقطة\n تابع التعليم كي تحصل على نقاط اكثر',
                    middleTextStyle: Get.textTheme.headline5,
                    textCancel: 'حسنا');
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite_sharp,
                    color: Colors.red,
                  ), //thunder Lightning  agitation
                  SizedBox(
                    width: 5,
                  ), //Crown an average
                  Text(
                    '${nextControler.note}',
                    style: Get.textTheme.headline6,
                  ),
                ],
              ),
            ),
            if (context.isPhone)
              IconButton(
                  onPressed: () {
                    if (Get.isDarkMode) {
                      Get.changeTheme(Themes.isLightMode);
                      // sharedPreferences!.setBool('mode', true);
                      controlesScreen.changeMoad();

                      print(Get.isDarkMode);
                    } else {
                      Get.changeTheme(Themes.isDarcMode);
                      // sharedPreferences!.setBool('mode', false);
                      controlesScreen.changeMoad();
                    }
                    // controlesScreen.changeMoad();
                  },
                  icon: Icon(Icons.brightness_4_outlined)),
          ],
          //   backgroundColor: Color(0xFF00d565),
          title: GetBuilder<ControlesScreen>(
            builder: ((cont) {
              return Text('${cont.titleAppBar[cont.indexScreen]}');
            }),
          ),
        ),
        body: GetBuilder<ControlesScreen>(
          builder: ((cont) {
            return cont.screen[cont.indexScreen];
          }),
        ),
      ),
    );
  }
}
