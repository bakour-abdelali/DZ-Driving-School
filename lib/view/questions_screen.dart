import 'package:flutter/material.dart';
import '../widget.dart/questions_item.dart';
import 'package:ahmed/modle/questions.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: quzData.length,
            itemBuilder: ((context, index) {
              //  print(quzData.length);
              return QuestionsItem(
                question: '${quzData[index].quz}',
                index: index + 1,
                answer: '${quzData[index].answer}',
              );
            })));
  }
}
