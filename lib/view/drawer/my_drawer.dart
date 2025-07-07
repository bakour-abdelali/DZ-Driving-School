import 'package:ahmed/conpanes/themes.dart';
import 'package:ahmed/const/const.dart';
import 'package:ahmed/modle/safety_rules.dart';

import 'package:ahmed/widget.dart/my_button.dart';
import 'package:ahmed/widget.dart/time_learn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../safery_rules_screen.dart';
import '../view_data_safety_rules_item_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      //semanticLabel: 'Ahmed',
      //backgroundColor: primaryColor,
      // child: ,
      child: ListView(
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: primaryColor,
            ),
            child: Text(
              'Ahmed',
              style: Themes.isLightMode.textTheme.headline6!.copyWith(
                fontSize: 60,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            title: 'القيادة بأمان',
            iconData: Icons.verified_user,
            screen: SafetyRulesScreen(),
          ),
          MyButton(
            title: 'قواعد اساسية لسلامة',
            iconData: Icons.gavel,
            screen: ViewDataSafetyRulesItemScreen(
              index: dataSafetyRules.length - 2,
            ),
          ),
          MyButton(
            title: 'وقوع حادث',
            iconData: Icons.directions_car_filled_outlined,
            screen: ViewDataSafetyRulesItemScreen(
                index: dataSafetyRules.length - 1),
          ),
          const TimeLearn(
            title: 'تعين وقت لتعلم',
            urlImage: 'images/exam-results.png',
            // screen: ViewDataSafetyRulesItemScreen(
            //     index: dataSafetyRules.length - 1),
          ),
          Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 5),
              child: ListTile(
                onTap: () {
                  Get.defaultDialog(
                      title: "حول التطبيق",
                      middleText:
                          "تم تطوير تطبيق تعليم قواعد وإشارات المرور من قبل فريق بكور يهدف التطبيق إلى توفير طريقة سهلة وممتعة لتعلم قواعد وإشارات المرور اللازمة لامتحان رخصة القيادة. يحتوي التطبيق على مجموعة كبيرة من الأسئلة الممتعة والتدريبات العملية التي يمكن للمستخدمين الاستفادة منها لتعزيز معرفتهم بالقواعد والإشارات.يمكن لجميع المستخدمين التواصل مع المبرمج عن طريق البريد الإلكتروني على bakourabdali28@gmail.com لتزويدهم بأي ملاحظات أو اقتراحات يرونها مناسبة لتحسين التطبيق.",
                      middleTextStyle: Get.textTheme.bodyText1);
                },
                title: const Text('حول التطبيق'),
                leading: Icon(
                  Icons.info_outline,
                  size: 40,
                ),
              )),
          // MyButton(),
          // MyButton(),
          // MyButton(),
        ],
      ),
    );
  }
}
