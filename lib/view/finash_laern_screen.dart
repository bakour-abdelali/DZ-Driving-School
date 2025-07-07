import 'package:ahmed/view/my_home_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class FinshLaernScreen extends StatelessWidget {
  final bool isNew;
  const FinshLaernScreen({super.key, required this.isNew});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('asset/finshlaen-trophy.json',
                fit: BoxFit.fill, height: 400),

            // const Icon(
            //   Icons.check_circle_outline_outlined,
            //   size: 200,
            //   color: primaryColor,
            // ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(5),
              child: Text(
                isNew
                    ? 'أحسنت لقد أنتهية من الدرس و حصلة على 20 نقطة '
                    : 'لقد انتهيت من عملية المراجعة',
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
    );
  }
}
