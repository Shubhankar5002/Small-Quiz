import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback statehandler;
  String answer;
  
  Answer(this.statehandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answer),
        onPressed: statehandler,
      ),
    );
  }
}
