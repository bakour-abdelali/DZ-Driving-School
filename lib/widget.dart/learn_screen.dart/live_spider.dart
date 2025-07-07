import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../const/const.dart';
import '../../controler/controles_screen.dart';

class LiveSpider extends StatelessWidget {
  final String text;
  const LiveSpider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlesScreen>(builder: (controlesScreen) {
      return Container(
        width: double.infinity,
        height: 150,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color:
                !controlesScreen.modeDarc ? primaryLight : Colors.yellow[500],
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: Get.textTheme.headline6!.copyWith(color: Colors.black),
        ),
      );
    });
  }
}
