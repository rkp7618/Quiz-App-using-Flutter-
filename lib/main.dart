import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite colour',
      'answers': [
        {'text': 'Black', 'Score': 10},
        {'text': 'Blue', 'Score': 5},
        {'text': 'Red', 'Score': 8},
        {'text': 'White', 'Score': 1}
      ]
    },
    {
      'questionText': 'What is your favourite Food',
      'answers': [
        {'text': 'Pizza', 'Score': 5},
        {'text': 'Burger', 'Score': 4},
        {'text': 'Chawal Dal', 'Score': 6},
        {'text': 'Dahi Chura', 'Score': 1}
      ]
    },
    {
      'questionText': 'What is favourite animal',
      'answers': [
        {'text':'Dog', 'Score': 5},
        {'text':'Elephant', 'Score': 10},
        {'text':'Lion', 'Score': 6},
        {'text':'Jackal', 'Score':2}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore=0;
  void _resetQuiz()
  {
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex =_questionIndex+1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions,_answerQuestion,_questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
