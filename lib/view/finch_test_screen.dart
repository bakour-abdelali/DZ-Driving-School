import 'package:ahmed/view/my_home_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class FinshTestScreen extends StatelessWidget {
  final int moyan;
  const FinshTestScreen({super.key, required this.moyan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Lottie.asset('assets/sademoji.json', height: 400),
              moyan >= 5
                  ? Lottie.asset(
                      'asset/congratulationbadgeanimation.json',
                      height: 400,
                    )
                  : Lottie.asset('asset/sademoji.json', height: 400),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(5),
                child: Text(
                  moyan >= 5
                      ? ' احمد فخور بك لقد انجحت في امتحان و حصلت على   $moyan/10   و سوف تحصل على عشرين نقطة كمكافة على مجهودك'
                      : ' حتى و انت تخطأ فأنت تتعلم لقد حصلت على $moyan/10',
                  style: Get.textTheme.bodyText1,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.offAll(MyHomePage());
                  },
                  child: const Text('الذهاب الى القائمة الرئسية'))
            ],
          ),
        ),
      ),
    );
  }
}
