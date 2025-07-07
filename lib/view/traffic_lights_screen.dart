import 'package:ahmed/controler/trafic_next_controler.dart';
import 'package:ahmed/modle/rule.dart';

import 'package:ahmed/widget.dart/traffi_lights_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modle/categories.dart';
import '../widget.dart/learn_screen.dart/live_spider.dart';

// ignore: must_be_immutable
class TrafficLightsScreen extends StatelessWidget {
  TraficNextControler controlesScreen = Get.put(TraficNextControler());
  bool indexLive = true;
  TrafficLightsScreen({super.key});
  //ControlesScreen controlesScreen = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const LiveSpider(
            text: 'المستوى الأول :الاشارات',
          ),
          Container(
            // margin: const EdgeInsets.all(20),
            // padding: const EdgeInsets.all(5),
            height: Get.height * 1.40,
            // width: 200,
            //color: Colors.red,
            child: GridView.builder(
                //scrollDirection: Axis.horizontal,

                // physics: ScrollPhysics(), //const BouncingScrollPhysics(),
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.isPhone ? 2 : 3,
                  childAspectRatio: context.isPhone ? 0.7 : 2,
                  //childAspectRatio:20,

                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 10,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  indexLive = true;
                  return TrafficLightsItem(
                    indexLive: indexLive,
                    index: index,
                    title: categories[index].title,
                    urlImag: categories[index].imageUrl,
                  );
                }),
          ),
          const LiveSpider(
            text: 'المستوى الثاني : الأولوية',
          ),
          Container(
            height: Get.height * 1.2,

            //width: 400,
            //  color: Colors.red,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.isPhone ? 2 : 3,
                  childAspectRatio: context.isPhone ? 0.7 : 1.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: categories.length - 1,
                itemBuilder: (context, index) {
                  indexLive = false;
                  return TrafficLightsItem(
                      indexLive: indexLive,
                      index: index,
                      title: 'الجزء رقم ${index + 1}',
                      // sublistRules(index)![index]
                      //     .title, //categories[index].title,
                      urlImag: sublistRules(index)![index]
                          .imageUrl //categories[index].imageUrl,
                      );
                }),
          ),
        ],
      ),
    );
  }
}
