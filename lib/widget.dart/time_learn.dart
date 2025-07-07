import 'package:ahmed/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../const/funcion/time_learn_fuction.dart';

class TimeLearn extends StatelessWidget {
  final title;
  final urlImage;
  const TimeLearn({super.key, required this.title, required this.urlImage});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.amber,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(5),
        child: ListTile(
          onTap: () async {
            //  print(sharedPreferences.getInt("hour"));
            TimeOfDay? timenew = await showTimePicker(
                helpText: "اختر ساعة و الدقيقة",
                cancelText: "ألغاء",
                confirmText: "موافق",
                context: context,
                initialTime: sharedPreferences.getInt("hour") == null
                    ? TimeOfDay.now()
                    : TimeOfDay(
                        hour: sharedPreferences.getInt("hour")!,
                        minute: sharedPreferences.getInt("minit")!));
            if (timenew == null) {
              if (sharedPreferences.getInt("hour") == null) {
                Get.defaultDialog(
                    title: "تنبيه",
                    middleText: 'لم تقم بتحديد وقت لتعليم ',
                    middleTextStyle: Get.textTheme.bodyText1);
              }

              return;
            } else {
              sharedPreferences.setInt("hour", timenew.hour);
              sharedPreferences.setInt("minit", timenew.minute);
              Get.defaultDialog(
                title: "تم تحديد وقت لتعلم",
                middleText:
                    '${sharedPreferences.getInt("hour")}:${sharedPreferences.getInt("minit")}',
                middleTextStyle: Get.textTheme.bodyText1,
              );
              await scheduleDailyNotification();
              return;
            }
          },
          title: Text(
            '${title}',
          ),
          leading: Image.asset(urlImage),
        ));
  }
}
