import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are great and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Nice not bad!';
    } else if (resultScore <= 16) {
      resultText = 'ouch You are terrible, I must fuck you now!';
    } else {
      resultText = 'Good luck bye';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
