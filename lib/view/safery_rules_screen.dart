// ignore_for_file: prefer_const_constructors

import 'package:ahmed/conpanes/themes.dart';
import 'package:ahmed/controler/controles_screen.dart';
import 'package:ahmed/modle/safety_rules.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../widget.dart/safety_rules_item.dart';

// ignore: must_be_immutable
class SafetyRulesScreen extends StatelessWidget {
  SafetyRulesScreen({super.key});
  ControlesScreen controlesScreen = Get.find<ControlesScreen>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('القيادة بأمان'),
        ),
        body: Container(
          // padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                //flex: 1,
                child: Text(
                  'تتسبب العوامل الجوية السيئة في تعريض السائقين للخطر وزيادة فرص وقوع حوادث المرور، ومن بين هذه العوامل الجوية السيئة',
                  style: controlesScreen.modeDarc
                      ? Themes.isDarcMode.textTheme.bodyText1!.copyWith(
                          fontSize: 20,
                        )
                      : Themes.isLightMode.textTheme.bodyText1!.copyWith(
                          fontSize: 20,
                        ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: ListView.builder(
                      //padding: EdgeInsets.all(20),

                      itemCount: dataSafetyRules.length - 2,
                      itemBuilder: ((context, index) {
                        return SafetyRulesItem(
                          index: index,
                          safetyRules:
                              '${index + 1}  ${dataSafetyRules[index].title}',
                        );
                      }))),
            ],
          ),
        )
        //Center(child: Text('hello')),
        //  SingleChildScrollView(
        //   child: Column(
        //     children: <Widget>[
        //       Expanded(
        //         child: Container(
        //           padding: EdgeInsets.all(10),
        //           child: Text(
        //               'تتسبب العوامل الجوية السيئة في تعريض السائقين للخطر وزيادة فرص وقوع حوادث المرور، ومن بين هذه العوامل الجوية السيئة'),
        //         ),
        //       ),
        //       // Expanded(
        //       //   child: ListView.builder(
        //       //       itemCount: dataSafetyRules.length,
        //       //       itemBuilder: ((context, index) {
        //       //         return Text(dataSafetyRules[index].title!);
        //       //       })),
        //       // )
        //     ],
        //   ),
        // ),
        );
  }
}
