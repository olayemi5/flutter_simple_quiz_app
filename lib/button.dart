import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function selectHandler;
  final String questionAnswer;
  Buttons(this.selectHandler, this.questionAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
      RaisedButton(
                 color: Colors.blue,
                textColor: Colors.white,
                child: Text(questionAnswer),
                onPressed: selectHandler,),
    );
  }
}
