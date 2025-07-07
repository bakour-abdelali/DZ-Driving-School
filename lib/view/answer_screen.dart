import 'package:ahmed/const/const.dart';
import 'package:ahmed/controler/controles_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../conpanes/themes.dart';

class AnswerScreen extends StatelessWidget {
  final String? quz;
  final String? answer;
  final int? index;
  AnswerScreen({this.answer, this.index, this.quz});
  final controls = Get.find<ControlesScreen>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("سؤال رقم $index"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(40),
              alignment: Alignment.topRight,
              color: controls.modeDarc ? Colors.grey[700] : Colors.white,
              width: double.infinity,
              child: Text(
                quz!,
                style: controls.modeDarc
                    ? Themes.isDarcMode.textTheme.headline6
                    : Themes.isLightMode.textTheme.headline6,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(40),
                width: double.infinity,
                color:
                    !controls.modeDarc ? primaryColor : Colors.deepOrange[700],
                alignment: Alignment.topRight,
                child: SingleChildScrollView(
                  child: Text(
                    answer!,
                    style: controls.modeDarc
                        ? Themes.isDarcMode.textTheme.headline6
                        : Themes.isLightMode.textTheme.headline6,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
