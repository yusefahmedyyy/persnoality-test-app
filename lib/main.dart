import 'package:firstapp/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

//void main() {
// runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what is your favourite color ?',
      'answers': [
        {'text': 'black', 'score': 100},
        {'text': 'red', 'score': 7},
        {'text': 'green', 'score': 5},
        {'text': 'white', 'score': 3}
      ]
    },
    {
      'questionText': 'what is your favourite animal?',
      'answers': [
        {'text': 'rabbit', 'score': 10},
        {'text': 'snake', 'score': 7},
        {'text': 'cat', 'score': 5},
        {'text': 'dog', 'score': 3}
      ]
    },
    {
      'questionText': 'what your favourite chocolate?',
      'answers': [
        {'text': 'galaxy', 'score': 10},
        {'text': 'snickers', 'score': 7},
        {'text': 'mars', 'score': 5},
        {'text': 'kinder', 'score': 3}
      ]
    },
    {
      'questionText': 'what is your favourite meal?',
      'answers': [
        {'text': 'burger', 'score': 10},
        {'text': 'pasta', 'score': 7},
        {'text': 'pizza', 'score': 5},
        {'text': 'BBQ', 'score': 3}
      ]
    },
  ];
  var _qindex = 0;
  var _totalscore = 0;

  void _resetquiz() {
    setState(() {
      _qindex = 0;
      _totalscore = 0;
    });
  }

  void _ansqueston(int score) {
    _totalscore += score;

    setState(() {
      _qindex++;
    });
    print(_qindex);
    if (_qindex < _questions.length) {
      print('we have more questions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(' personality test'),
        ),
        body: _qindex < _questions.length
            ? Quiz(
                answerQuestion: _ansqueston,
                questionindex: _qindex,
                questions: _questions,
              )
            : Result(_totalscore, _resetquiz),
      ),
    );
  }
}
