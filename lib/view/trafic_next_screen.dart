import 'package:ahmed/modle/traffic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';

import '../controler/trafic_next_controler.dart';

class TraficNextScreen extends StatelessWidget {
  final String? titleAppBar;
  final List<Traffic>? list;
  final int? nmbrtPage;
  final bool indexLive;

  TraficNextScreen(
      {super.key,
      required this.indexLive,
      required this.titleAppBar,
      required this.list,
      required this.nmbrtPage});

  @override
  Widget build(BuildContext context) {
    // TraficNextControler controlesScreen = Get.put(TraficNextControler());
    TraficNextControler controller = Get.find<TraficNextControler>();
    print(controller.note);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addIndex(list!.length, nmbrtPage!, indexLive);
        },
        child: const Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text(titleAppBar!),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              // color: Colors.red,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: GetBuilder<TraficNextControler>(builder: (context) {
                return Image.asset(
                  '${list![context.index].imageUrl}',
                  //  height: 200,
                  alignment: Alignment.center,
                );
              }),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.topRight,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(5),
              child: SingleChildScrollView(
                child: GetBuilder<TraficNextControler>(builder: (context) {
                  return Text(
                    '${list![context.index].title}',
                    style: Get.textTheme.headline6,
                  );
                }),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
                onPressed: () {
                  controller.speak(list![controller.index].title!);
                },
                // microphone
                icon: Icon(
                  Icons.record_voice_over_sharp,
                  size: 50,
                  color: Get.theme.textTheme.bodyText1!.color,
                )),
          )
        ],
      ),
    );
  }
}
