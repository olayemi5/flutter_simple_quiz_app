
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  final _questions=
  const [
    {
      'questionText':  'What\s your favorite question?',
      'answers':
        [
          {'text':'Red', 'score':10}, {'text':'Yellow', 'score':40},
          {'text':'Black', 'score': 73}, {'text': 'Green', 'score': 93}
          ]
    },
    {
      'questionText':  'What\'s your favourite animal?',
      'answers':[
        {'text': 'Goat', 'score': 13},
        {'text': 'Lion', 'score': 43},
        {'text':'Zebra', 'score': 83},
        {'Kola': 'Fowl', 'score': 13}
        ]
    },
    {
      'questionText':  'What\'s is your favourite instructor?',
      'answers':[
        {'text': 'Max', 'score': 83},
        {'text': 'Phil', 'score': 99},
        {'text': 'Sony', 'score': 73},
        {'text': 'Solar', 'score': 23}
        ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
 void _restQuiz(){
   setState(() {
      _questionIndex = 0;
      _totalScore = 0;
   });
 }

  void _answeredQuestion(int score){
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }
  @override
  Widget build(BuildContext context) {


    return MaterialApp(home: Scaffold(
       appBar: AppBar(title: Text('Flutter Again'),),
       body: _questionIndex < _questions.length ?
           Quiz(questions:_questions, answeredQuestion:_answeredQuestion, questionIndex:_questionIndex)
        : Result(_totalScore, _restQuiz),
    ),);
  }
}