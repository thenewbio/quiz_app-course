// ignore_for_file: deprecated_member_use

import 'package:academind_courses/assignment/App/app_screen.dart';
import 'package:academind_courses/result.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _totalScore = 0;
  void _answerQuestion(int score) {
    // print('Answer chosen');
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // if (_questionIndex < _questions.length) {
    //   print('we have more questions');
    // } else {
    //   print('No more questions!');
    // }
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return const MyApp1();
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //       appBar: AppBar(title: const Text('Quiz App')),
    //       body: _questionIndex < _questions.length
    //           ? Quiz(
    //               questions: _questions,
    //               answerQuestion: _answerQuestion,
    //               questionIndex: _questionIndex,
    //             )
    //           : Result(resultScore: _totalScore, resetHandler: _resetQuiz)),
    // );
  }
}
