import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }
// ana main fonksıyon
void main() => runApp(MyApp());

// StateFull widget diğer stateless widgetları yönetir
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// içine diğer stateless widgetları alan ana stateles widget
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is favorite colours',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 4},
      ],
    },
    {
      'questionText': 'What is your\'s favorite animals',
      'answer': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Tiger', 'score': 3},
        {'text': 'Donkey', 'score': 4},
      ],
    },
    {
      'questionText': 'What is your sex position',
      'answer': [
        {'text': 'Doggy', 'score': 10},
        {'text': '69', 'score': 5},
        {'text': 'Just Hole', 'score': 3},
        {'text': 'Anal', 'score': 4},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalscore = _totalscore + score;
    // build i tetikliyor ve verilerde deiğşim saglıyor
    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('başarılı');
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalscore, _resetQuiz)),
    );
  }
}
