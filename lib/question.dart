import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionprinted;

  Question(this.questionprinted);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child: Text(
        questionprinted,
        style: TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
