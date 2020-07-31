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

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void userAnswer(int val) {
    setState(() {
      if (val == 1)
        _questionIndex += 1;
      else
        _questionIndex = 0;
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
                    child: Column(
                    children: <Widget>[
                      Text(
                        'No more Questions :)',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                      FlatButton(
                        child: Text('Restart!'),
                        onPressed: () {
                          userAnswer(0);
                        },
                      )
                    ],
                  ))));
  }
}
