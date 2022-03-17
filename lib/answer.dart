import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _selectHandler;
  final String _answerText;

  Answer(this._selectHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        color: Colors.blue,
        onPressed: _selectHandler,
        textColor: Colors.white,
      ),
    );
  }
}
