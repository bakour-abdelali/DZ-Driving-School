import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:url_launcher/url_launcher.dart' as Launcher;

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String title;
  //final String url;
  final IconData iconData;
  Widget screen;

  MyButton({required this.title, required this.iconData, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.amber,
        margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(5),
        child: ListTile(
          onTap: () {
            Get.to(
                duration: const Duration(milliseconds: 460),
                transition: Transition.rightToLeft,
                () => screen);
          },
          title: Text(
            '$title',
          ),
          leading: Icon(
            iconData,
            size: 40,
          ),
        ));
  }
}
