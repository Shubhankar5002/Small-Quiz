import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  int TotalScore = 0;
  VoidCallback reset;

  Final(this.TotalScore, this.reset);

  String get result {
    var resultphase = 'you did it';

    if (TotalScore < 8) {
      resultphase = 'you are awesome';
    }
    return resultphase;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            result,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: reset,
            child: Text('restart the quiz'),
          )
        ],
      ),
    );
  }
}
