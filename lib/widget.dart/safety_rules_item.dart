import 'package:ahmed/controler/controles_screen.dart';

import 'package:ahmed/view/view_data_safety_rules_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../conpanes/themes.dart';

// ignore: must_be_immutable
class SafetyRulesItem extends StatelessWidget {
  final String? safetyRules;
  final int index;
  ControlesScreen controlesScreen = Get.find<ControlesScreen>();
  SafetyRulesItem({required this.safetyRules, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      child: ElevatedButton(
          style: controlesScreen.modeDarc
              ? ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(5),
                  maximumSize: Size(Get.width, Get.height),
                  backgroundColor: Colors.deepOrange,
                  alignment: Alignment.centerRight,
                  textStyle: Themes.isDarcMode.textTheme.bodyText1)
              : ElevatedButton.styleFrom(
                  //animationDuration: Duration(seconds: 5),
                  //shadowColor: Colors.black,
                  maximumSize: Size(Get.width, Get.height),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerRight,
                  textStyle: Themes.isLightMode.textTheme.bodyText1
                  //padding: EdgeInsets.all(10),

                  ),
          onPressed: () {
            print("go yo SafetyRulesItem screen");
            Get.to(
                transition: Transition.zoom,
                () => ViewDataSafetyRulesItemScreen(index: this.index));
          },
          child: Text(
            "$safetyRules",
          )),
    );
  }
}
