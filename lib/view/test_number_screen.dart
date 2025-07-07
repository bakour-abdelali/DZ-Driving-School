// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ahmed/modle/test.dart';

import '../controler/test_controler.dart';

class TestNumberScreen extends StatelessWidget {
  final List<Test> test;
  const TestNumberScreen({
    Key? key,
    required this.test,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(TestControler());
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<TestControler>(
        builder: (controller) {
          return Column(children: [
            Container(
              padding: const EdgeInsets.all(10),
              // color: Colors.amber,

              child: Wrap(
                children: controller.icons,
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Expanded(
              child: Image.asset(
                test[controller.index].pathImage!,
                height: 400, //Get.height / 3,
                //width: //Get.width,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'هذه اشارة ؟',
              style: Get.textTheme.bodyText1,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: test[controller.index].quze!.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        //   padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.all(5),
                        child: ElevatedButton(
                            // style: ElevatedButton.styleFrom(
                            //     animationDuration: Duration(seconds: 10)),
                            onPressed: () {
                              controller.vrify(
                                  test[controller.index], index, test.length);
                            },
                            child: Text(test[controller.index].quze![index]!)),
                      );
                    })))
          ]);
        },
      ),
    );
  }
}
