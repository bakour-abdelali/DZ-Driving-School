import 'package:ahmed/const/const.dart';
import 'package:ahmed/controler/trafic_next_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../modle/test.dart';
import '../view/finch_test_screen.dart';

class TestControler extends GetxController {
  late List<Icon> icons;
  late int index;
  late int note;
  TraficNextControler controler = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    icons = [];
    index = 0;
    note = 0;

    super.onInit();
  }

  //دالى تشوف علامة صحيحة ولا نو
  void vrify(Test test, int nomberChoosUser, int sizeListTest) {
    if (index < sizeListTest - 1 && icons.length <= sizeListTest) {
      if (test.numberAnser == nomberChoosUser) {
        icons.add(const Icon(
          Icons.check_circle_outline_outlined,
          color: primaryColor,
          size: 60,
        ));
        note++;
      } else {
        icons.add(const Icon(
          Icons.clear_sharp,
          color: Colors.red,
          size: 50,
        ));
        Get.snackbar(
          'الأجابة الصحيحة',
          test.quze![test.numberAnser]!,
          //  backgroundColor: Colors.white,
          duration: const Duration(milliseconds: 1500),
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'الأجابة الصحيحة',
            style: Get.textTheme.bodyText1,
          ),
          //    forwardAnimationCurve: Curves.slowMiddle,
          // mainButton: TextButton(
          //     onPressed: () {
          //       index++;
          //     },
          //     child: Text('تالي')),
        );
      }
      //   if (index < sizeListTest - 1) {
      // print('finsh');
      index++;
      // }
    } else if (index == sizeListTest - 1) {
      if (test.numberAnser == nomberChoosUser) {
        note++;
      }
      if (note >= 5) {
        controler.note = controler.note + 20;
        sharedPreferences.setInt('note', controler.note);
        update();
      }
      Get.offAll(FinshTestScreen(
        moyan: note,
      ));
    } else {
      print(note);
    }
    update();
  }
}
