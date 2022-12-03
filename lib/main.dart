import 'package:first_project/continue.dart';
import 'package:first_project/final.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyappState();
  }
}

class MyappState extends State<Myapp> {
  int TotalScore = 0;

  void reset() {
    setState(() {
      TotalScore = 0;
      questionnum = 0;
    });
  }

  void answerquestion(int Score) {
    setState(() {
      TotalScore += Score;
      questionnum = questionnum + 1;
    });
  }

  var questions = [
    {
      'questiontext': 'whats your favourite color',
      'answer': [
        {'text': 'red', 'score': 7},
        {'text': 'black', 'score': 7},
        {'text': 'green', 'score': 7},
        {'text': 'blue', 'score': 7},
      ]
    },
    {
      'questiontext': 'whats your favourite animal',
      'answer': [
        {'text': 'red', 'score': 7},
        {'text': 'black', 'score': 7},
        {'text': 'green', 'score': 7},
        {'text': 'blue', 'score': 7},
      ]
    },
  ];

  int questionnum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("personality quiz"),
        ),
        body: questionnum < questions.length
            ? Continue(questions, questionnum, answerquestion,TotalScore)
            :  Final(TotalScore, reset),
      ),
    );
  }
}
