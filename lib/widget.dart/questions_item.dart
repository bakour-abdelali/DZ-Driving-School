import 'package:ahmed/conpanes/themes.dart';
import 'package:ahmed/controler/controles_screen.dart';
import 'package:ahmed/view/answer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionsItem extends StatelessWidget {
  final String? question;
  final int? index;
  final String? answer;

  QuestionsItem({required this.question, this.index, this.answer});
  //final control = Get.find<ControlesScreen>();
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GetBuilder<ControlesScreen>(
        builder: (controller) => Card(
          color: !controller.modeDarc
              ? index! % 2 == 0
                  ? Colors.green[50]
                  : Colors.green[100]
              : index! % 2 == 0
                  ? Colors.deepOrange[200]
                  : Colors.deepOrange[400],
          child: ListTile(
            onTap: () {
              Get.to(
                  transition: Transition.downToUp,
                  () => AnswerScreen(
                        answer: answer,
                        index: index,
                        quz: question,
                      ));
            },
            title: Text(
              this.question!,
              style: controller.modeDarc
                  ? Themes.isDarcMode.textTheme.bodyText1!
                      .copyWith(color: Colors.black)
                  : Themes.isLightMode.textTheme.bodyText1,
            ),
          ),
        ),
      ),
    );
  }
}
