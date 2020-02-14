import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _answerQuestions() {
    print('resposta respondida');

    setState(() {
      print(_qindex);
      if (_qindex >= 1) {
        _qindex = 0;
      } else
        _qindex += 1;
    });
  }

  var _qindex = 0;
  var questions = ['Qual a sua cor favorita?', 'Qual o seu animal preferido'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Fist App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_qindex],
            ),
            RaisedButton(
              child: Text('resposta 1'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('resposta 2'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('resposta 3'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('resposta 4'),
              onPressed: _answerQuestions,
            )
          ],
        ),
      ),
    );
  }
}
