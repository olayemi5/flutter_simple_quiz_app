import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final int finalResult;
final Function resetHandler;
Result(this.finalResult, this.resetHandler);

String get resultPhrase {
  var resultText;
  if (finalResult >= 100){
       resultText = 'You are awesome';
     }
  else if (finalResult > 100){
    resultText = 'You are awesome and unpridictable';
  }
  else {
    resultText = 'You are bad';
  }
  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Center (
        child: Column(
        children:<Widget>[
        Text(
        resultPhrase,
        style: TextStyle(fontSize:36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
         ),
          FlatButton(child: Text('Restart Quiz'), onPressed:resetHandler,textColor: Colors.blue,)
        ]
        )

       );
  }
}
