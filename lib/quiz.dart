import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          //  ... -> is used so that it takes the list given by the questions to make a list of individual values to the main list
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String) ;
        }).toList() // .toList() is used so that questions return list
      ],
    );
  }
}
