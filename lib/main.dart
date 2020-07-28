import 'package:flutter/material.dart';

import 'Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void userAnswer() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favorite color?',
      'what is your favorite country?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First Flutter App'),
            ),
            body: Column(
              children: [
                Questions(questions[questionIndex]),
                RaisedButton(
                  child: Text('answer1'),
                  onPressed: userAnswer,
                ),
                RaisedButton(
                  child: Text('answer1'),
                  onPressed: userAnswer,
                ),
                RaisedButton(
                  child: Text('answer1'),
                  onPressed: userAnswer,
                ),
              ],
            )));
  }
}
