import 'package:first_project/answer.dart';
import 'package:first_project/question.dart';
import 'package:flutter/material.dart';

class Continue extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionnum,TotalScore;
  final Function answerquestion;
  
  Continue(this.questions, this.questionnum,this.answerquestion,this.TotalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionnum]["questiontext"] as String,
        ),
        ...(questions[questionnum]['answer']as List).map((answer) {
          return Answer(() =>  answerquestion(answer['score']), answer['text'] as String);
        }).toList(),
        Text('your current score is $TotalScore')
      ],
    );
  }
}
