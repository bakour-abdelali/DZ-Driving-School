// ignore_for_file: prefer_const_constructors

import 'package:ahmed/conpanes/themes.dart';
import 'package:ahmed/const/const.dart';
import 'package:ahmed/controler/controles_screen.dart';
import 'package:ahmed/modle/safety_rules.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewDataSafetyRulesItemScreen extends StatelessWidget {
  final int index;
  final ControlesScreen control =
      Get.find<ControlesScreen>(); //<ControlsScreen>find();
  ViewDataSafetyRulesItemScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    bool mode = control.modeDarc;
    return Scaffold(
      appBar: AppBar(
        title: Text("${dataSafetyRules[index].title}"),
      ),
      body: ListView.builder(
        itemCount: dataSafetyRules[index].body!.length,
        itemBuilder: ((context, i) {
          return Container(
            // color: Colors.red,
            //height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mode ? primaryColor : primaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              dataSafetyRules[this.index].body![i]!,
              style: mode
                  ? Themes.isDarcMode.textTheme.bodyText1
                  : Themes.isLightMode.textTheme.bodyText1,
            ),
          );
        }),
      ),
    );
  }
}
