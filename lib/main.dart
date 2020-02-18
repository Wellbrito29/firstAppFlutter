import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var questions = [
    {
      'questionText': 'Qual a sua cor favorita?',
       'answers': ['Azul', 'Vermelho', 'Preto', 'Branco']
    },

    {
      'questionText': 'Qual droga você prefere?',
       'answers': ['MD', 'Maconha', 'Loló', 'Álcool']
    },
   
  ];

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
              questions[_qindex]['questionText'],
            ),
            
            ...(questions[_qindex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestions,answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
