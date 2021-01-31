import 'package:flutter/material.dart';
import './question.dart';
import './button.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answeredQuestion;
  final int questionIndex;
  Quiz({
        @required this.questions,
        @required this.answeredQuestion,
        @required this.questionIndex
      });
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Questions(questions[questionIndex]["questionText"]),
    ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer){
    return Buttons(() => answeredQuestion(answer["score"]), answer["text"]);
    }).toList()
    ],
    );
  }
}
