import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;
  final int i;

  Questions(this.question, this.i);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        '$i. $question',
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
