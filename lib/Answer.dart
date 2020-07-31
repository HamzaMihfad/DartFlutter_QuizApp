import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function userAnswer;

  Answer(this.answer, this.userAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(right: 10, left: 10),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            answer,
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            userAnswer(1);
          },
        ));
  }
}
