import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // tip belirledik fonskyion
  final Function selectHandler;
 // parametre olarak fonksıyon alıyor ve on presde çalısıyor
  final String answer;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: RaisedButton(
        color: Colors.yellow,
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}
