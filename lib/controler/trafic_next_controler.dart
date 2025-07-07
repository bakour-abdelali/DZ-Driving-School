import 'package:ahmed/view/finash_laern_screen.dart';
import 'package:get/get.dart';
import '../main.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../modle/test.dart';
import '../view/test_number_screen.dart';

class TraficNextControler extends GetxController {
  late int index;
  late int note;
  final _flutterTts = FlutterTts();
  void speak(String text) async {
    if (text.isNotEmpty) {
      print('speak');

      await _flutterTts.speak(text);

      print('finsh speec');
      //
      // double v = await _flutterTts.getVoices;
      // print('oooooooooooooooooooo');
      // print(v);
    }
  }

  void addIndex(int l, int nmbrtPage, indexLive) {
    //10
    //9
    _flutterTts.stop();
    if (index < l - 1) {
      print(index);
      index++;
      update();
    } else {
      //if(indexLive){}
      if (indexLive) {
        print(indexLive);
        if (nmbrtPage * 20 == note) {
          note += 20;
          Get.offAll(
              transition: Transition.circularReveal,
              duration: const Duration(milliseconds: 500),
              const FinshLaernScreen(
                isNew: true,
              ));
        } else {
          Get.offAll(
              transition: Transition.circularReveal,
              duration: const Duration(milliseconds: 500),
              const FinshLaernScreen(
                isNew: false,
              ));
        }
      } else {
        if ((nmbrtPage + 7) * 20 == note) {
          print(indexLive);
          note += 20;
          Get.offAll(
              transition: Transition.circularReveal,
              duration: const Duration(milliseconds: 500),
              const FinshLaernScreen(
                isNew: true,
              ));
        } else {
          print('+++++++++++++++++++++++++++');
          Get.offAll(
              transition: Transition.circularReveal,
              duration: const Duration(milliseconds: 500),
              const FinshLaernScreen(
                isNew: false,
              ));
        }
      }

      index = 0;
      sharedPreferences.setInt('note', note);
      update();
    }
  }

  void goToTest(int indexItem) {
    if (note >= (indexItem + 13) * 20) {
      Get.to(
          transition: Transition.zoom,
          TestNumberScreen(
            test: testDataTotal[indexItem],
          ));
    } else {
      Get.defaultDialog(
          title: 'نقاطك غير كافية',
          middleTextStyle: Get.textTheme.headline5,
          middleText: 'عليك بجمع نقطت اكثر كي تجتاز هاذا الأختبار',
          textCancel: 'حسنا');
    }
  }

  void init() async {
    _flutterTts.setLanguage('ar');
    print("+++++++++++++++++++++");
    await _flutterTts.setSpeechRate(0.5);
  }

  @override
  void onInit() {
    print("============not================");
    index = 0;
    //sharedPreferences.clear();
    // sharedPreferences.setInt('note', 0);
    note = sharedPreferences.getInt('note') ?? 0;
    //note = 260;
    print(note);

    init();

    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _flutterTts.stop();
    super.dispose();
  }
}
