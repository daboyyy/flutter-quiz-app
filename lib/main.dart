import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animals?',
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World!'),
      ),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion
          ),
        ],
      ),
    ));
  }
}
