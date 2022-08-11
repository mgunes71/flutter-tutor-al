import 'package:flutter/material.dart';
import './questions.dart';

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
  var questionIndex = 0;

  void answerQuestion() {
    setState(
      () {
        questionIndex = questionIndex + 1;
      },
    );
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is favorite colours',
      'What is your\'s favorite animals'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex],
            ),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('answer 2');
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print('Answer 3')},
            ),
          ],
        ),
      ),
    );
  }
}
