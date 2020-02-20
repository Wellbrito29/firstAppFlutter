import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Qual a sua cor favorita  1111?',
      'answers': [{'text':'Azul', 'score': 10 }, {'text':'Vermelho', 'score': 20 }, {'text':'PRETO', 'score': 40 }, {'text':'branco', 'score': 50 }]
    },
    {
      'questionText': 'Qual a sua cor favorita  221?',
      'answers': [{'text':'Azul', 'score': 10 }, {'text':'Vermelho', 'score': 20 }, {'text':'PRETO', 'score': 40 }, {'text':'branco', 'score': 50 }]
    },
    {
      'questionText': 'Qual a sua cor favorita  3311?',
      'answers': [{'text':'Azul', 'score': 10 }, {'text':'Vermelho', 'score': 20 }, {'text':'PRETO', 'score': 40 }, {'text':'branco', 'score': 50 }]
    },
    
  ];

  void _answerQuestions(int score) {

    _score  += score; 
    print('resposta respondida');

    setState(() {
        _qindex = _qindex + 1;
      
    });
  }

void _restart () {

setState(() {
  _qindex = 0;
  _score = 0;
});
  
}


  var _qindex = 0;
  var _score = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Fist App'),
        ),
        body: _qindex < questions.length
            ? Quiz(answerQuestions: _answerQuestions, qIndex: _qindex,questions: questions,)  
            : Result(_score,_restart,),
      ),
    );
  }
}
 