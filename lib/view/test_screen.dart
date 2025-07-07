import 'package:ahmed/const/const.dart';

import 'package:ahmed/modle/test.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controler/trafic_next_controler.dart';

class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TraficNextControler controlesScreen = Get.find();
    return Scaffold(
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: testDataTotal.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  margin: const EdgeInsets.all(5),
                  color: Colors.white,
                  child: ListTile(
                    title: Text('اختبار رقم  ${index + 1} ',
                        style: Get.textTheme.bodyText1!
                            .copyWith(color: Colors.black)),
                    leading: controlesScreen.note > (index + 13) * 20
                        ? const Icon(
                            Icons.check_box,
                            size: 60,
                            color: primaryColor,
                          )
                        : controlesScreen.note == (index + 13) * 20
                            ? const Icon(
                                Icons.linear_scale,
                                size: 50,
                                color: primaryLight,
                              )
                            : const Icon(
                                Icons.lock_outlined,
                                size: 50,
                                color: Colors.pink,
                              ),
                    trailing: Text(
                      '${(index + 13) * 20}',
                      style:
                          Get.textTheme.bodyText1!.copyWith(color: Colors.blue),
                    ),
                    //mouseCursor: MouseCursor.uncontrolled,
                    onTap: () {
                      print(index);
                      controlesScreen.goToTest(index);
                      // Get.to(TestNumberScreen(
                      //   test: testDataTotal[index],
                      // ));
                      // // go to screen tast
                    },
                  ),
                ),
              );
            })));
  }
}
