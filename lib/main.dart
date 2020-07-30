import 'package:flutter/material.dart';

import 'Question.dart';
import 'Answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class Q {
  String question;
  var answers;

  Q(this.question, this.answers);
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void userAnswer() {
    setState(() {
      _questionIndex += 1;
    });
    print('Hello');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'question': 'what is your favorite color?',
        'answers': ['blue', 'red', 'green']
      },
      {
        'question': 'what is your favorite country?',
        'answers': ['Morocco', 'Germany', 'Canada']
      },
      {
        'question': 'what is your favorite animal?',
        'answers': ['Rabbit', 'Cat', 'Lion']
      }
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First Flutter App'),
            ),
            body: _questionIndex < questions.length
                ? Column(
                    children: [
                      Questions(questions[_questionIndex]['question'],
                          _questionIndex),
                      ...(questions[_questionIndex]['answers'] as List<String>)
                          .map((answer) {
                        return Answer(answer, userAnswer);
                      }).toList()
                    ],
                  )
                : Center(
                    child: Text('No more Questions :)'),
                  )));
  }
}
