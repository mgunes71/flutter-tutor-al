import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What is favorite colours',
      'answer': ['Black', 'Yellow', 'Green', 'Blue'],
    },
    {
      'questionText': 'What is your\'s favorite animals',
      'answer': ['Dog', 'Cat', 'Rabbit', 'Eagle'],
    },
    {
      'questionText': 'What is your sex position',
      'answer': ['69', 'Doggy', 'Masturbation', 'Just Hole']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print('sdsadsadsad');
    } else {
      print('No More');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('Did you it!'),
              ),
      ),
    );
  }
}
