import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Green', 'Red', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animals?',
        'answers': ['Elephant', 'Lion', 'Rabbit', 'Snake'],
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World!'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'] as String
          ),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
