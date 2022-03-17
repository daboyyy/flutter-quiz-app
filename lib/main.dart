import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'score': 10, 'text': 'Black'},
        {'score': 3, 'text': 'Green'},
        {'score': 5, 'text': 'Red'},
        {'score': 1, 'text': 'White'}
      ],
    },
    {
      'questionText': 'What\'s your favorite animals?',
      'answers': [
        {'score': 5, 'text': 'Elephant'},
        {'score': 9, 'text': 'Lion'},
        {'score': 3, 'text': 'Rabbit'},
        {'score': 11, 'text': 'Snake'}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'score': 1, 'text': 'Max'},
        {'score': 1, 'text': 'Max'},
        {'score': 1, 'text': 'Max'},
        {'score': 1, 'text': 'Max'}
      ],
    },
  ];
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Chosen!');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hello World!'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)
                : Result(_totalScore, _resetQuiz)));
  }
}
