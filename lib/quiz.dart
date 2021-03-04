import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function fonctionTOAnswer;
  

  Quiz(this.questions, this.questionIndex, this.fonctionTOAnswer);

  @override
  Widget build(BuildContext context) {
    var questions2 = questions;
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions2[questionIndex]['Answer'] as List).map((anser) {
          return Answer(anser['text'], () => fonctionTOAnswer(anser['score']));
        }),
      ],
    );
  }
}
