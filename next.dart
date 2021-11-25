import 'package:flutter/material.dart';
import 'package:music_magic/result.dart';

import './quizpage.dart';
import './result.dart';

class MyNext extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyNextState();
  }
}

class _MyNextState extends State<MyNext> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite music genre of these options?',
      'answers': [
        {'text': 'Rap', 'score': 10},
        {'text': 'Pop', 'score': 4},
        {'text': 'Country', 'score': 0},
        {'text': 'R&B', 'score': 7},
      ],
    },
    {
      'questionText': 'What\'s your place to listen to music?',
      'answers': [
        {'text': 'In the car.', 'score': 5},
        {'text': 'In my room', 'score': 2},
        {'text': 'Outside.', 'score': 1},
        {'text': 'At the gym.', 'score': 8},
      ],
    },
    {
      'questionText': 'Which artist do you enjoy listening to the most?',
      'answers': [
        {'text': 'Ariana Grande', 'score': 3},
        {'text': 'Drake', 'score': 8},
        {'text': 'Carrie Underwood', 'score': 0},
        {'text': 'Billie Eilish', 'score': 6},
      ],
    },
    {
      'questionText': 'What type of music can you not stand?',
      'answers': [
        {'text': 'Rock', 'score': 0},
        {'text': 'Rap', 'score': 4},
        {'text': 'Country', 'score': 10},
        {'text': 'Pop', 'score': 8},
      ],
    },
    {
      'questionText': 'Out of these genres, which do you prefer?',
      'answers': [
        {'text': 'Alternative', 'score': 2},
        {'text': 'Punk', 'score': 6},
        {'text': 'Rock', 'score': 10},
        {'text': 'Hyperpop', 'score': 4},
      ],
    },
    {
      'questionText': 'What era of music do you usually enjoy the most?',
      'answers': [
        {'text': '1980', 'score': 10},
        {'text': '1990', 'score': 7},
        {'text': '2000', 'score': 4},
        {'text': '2010', 'score': 2},
      ],
    },
    {
      'questionText': 'Favorite Throwback artist?',
      'answers': [
        {'text': 'Fergie', 'score': 6},
        {'text': 'Avril Lavigne', 'score': 7},
        {'text': 'Usher', 'score': 8},
        {'text': 'Madonna', 'score': 3},
      ],
    },
    {
      'questionText': 'Which playlist title would you be the most likely to play?',
      'answers': [
        {'text': 'R&B Throwbacks', 'score': 7},
        {'text': 'Todays Top Hits', 'score': 3},
        {'text': 'Alternative Thrills', 'score': 1},
        {'text': 'Dance Music', 'score': 6},
      ],
    },
    {
      'questionText': 'Favorite Iconic Album',
      'answers': [
        {'text': 'Dark Side of The Moon', 'score': 3},
        {'text': 'Thriller', 'score': 9},
        {'text': '...Baby One More Time', 'score': 5},
        {'text': 'Speak Now', 'score': 1},
      ],
    },
    {
      'questionText': 'Favorite new breakthrough artist??',
      'answers': [
        {'text': 'Doja Cat', 'score': 5},
        {'text': 'Billie Eilish', 'score': 2},
        {'text': 'Luke Combs', 'score': 0},
        {'text': 'Måneskin', 'score': 9},
      ],
    },
    {
      'questionText': 'Least favorite artist shown below?',
      'answers': [
        {'text': 'Lil Nas X', 'score': 0},
        {'text': 'Lady Gaga', 'score': 10},
        {'text': 'Ed Sheeran', 'score': 6},
        {'text': 'Harry Styles', 'score': 4},
      ],
    },
    {
      'questionText': 'Favorite time to listen to music?',
      'answers': [
        {'text': 'Morning', 'score': 0},
        {'text': 'Afternoon', 'score': 8},
        {'text': 'Night', 'score': 6},
        {'text': 'Twilight', 'score': 5},
      ],
    },
    {
      'questionText': 'Do overplayed songs bother you?',
      'answers': [
        {'text': 'Yes so much!', 'score': 3},
        {'text': 'No.', 'score': 10},
        {'text': 'Meh not really.', 'score': 6},
        {'text': 'Somtimes.', 'score': 4},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purpleAccent, Colors.lightBlueAccent, Colors.pinkAccent]
                  )
              )
          ),
          title: Text('Music Magic!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}