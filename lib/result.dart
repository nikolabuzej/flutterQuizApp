import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText = 'You did it ';
    if (resultScore <= 8) {
      resultText = 'YOure awesome';
    } else if (resultScore <= 12) {
      resultText = 'pretty good';
    } else if (resultScore <= 16) {
      resultText = 'youre bad';
    } else {
      resultText = 'youre really bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            textColor: Colors.blue,
            
          )
        ],
      ),
    );
  }
}
