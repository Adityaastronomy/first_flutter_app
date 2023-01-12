import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() => runApp(MyApp());       Only for one liner code
void main() {
  runApp(MyApp()); // Run the app in emulator
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // call the object of MyAppState to create connections between the two classes
  }
}

class _MyAppState extends State<MyApp> {
  // MyAppState -> public class  ||   __MyAppState -> private class  || visiblity criteria is related to main dart file
  final _questions = const [
    {
      'questionText': 'Whats your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'Whats your favourite animal?',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 1},
      ],
    },
    {
      'questionText': 'Whats your favourite game',
      'answer': [
        {'text': 'cricket', 'score': 10},
        {'text': 'football', 'score': 5},
        {'text': 'table Tenis', 'score': 3},
        {'text': 'Long Tenis', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
      
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      // setState update MyApp widget and call the build method again
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more _questions');
    } else {
      print('No more _questions');
    }
  }

  @override // shows that you called statelessWidget class explictly
  Widget build(BuildContext context) {
    // function of widgest return type and widget type is provided by material package to call build method
    // return MaterialApp(home: Text('Hello !'),);       // all of things used here is class

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz), //Body
      ),
    );
  }
}
