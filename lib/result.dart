import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restart;

  Result(this.score,this.restart);

  String get resultPhrase {
    String resultText;

    print(score);
    if (score < 30) {
      resultText = ' voce foi mais ou menos ';
    } else if (score < 40) {
      resultText = ' voce foi mais ou menos  ';
    } else {
      resultText = ' voce foi mais ou menosss ';
    }

    return resultText + '$score';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(onPressed: restart, child: Text('Reiniciar'))
      ],
    ));
  }
}
