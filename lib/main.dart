import 'package:TestApp/quiz.dart';
import 'package:flutter/material.dart';
import 'result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color b, wQ = Colors.black;
Color w = Colors.white;

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;
  int nom0, nom1, nom2 = 0;

  bool isSwitch = false;

  void resutQuiiz() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
      nom0 = 0;
      nom1 = 0;
      nom2 = 0;
    });
  }

  void functionAnswer(score) {
    setState(() {
      if (questionIndex == 0) {
        nom0 = score;
      } else if (questionIndex == 1) {
        nom1 = score;
      } else if (questionIndex == 2) {
        nom2 = score;
      }

      totalScore += score;
      questionIndex += 1;
    });

    // terminal for help
    print("questionIndex=$questionIndex");
    print("score=$score");
    print("num0=$nom0");
    print("num1=$nom1");

    print("num2=$nom2");

    print("stotalScore=$totalScore");
  }

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Question 1?.',
      'Answer': [
        {'text': 'Answer 1', 'score': 10},
        {'text': 'Answer 2', 'score': 20},
        {'text': 'Answer 3', 'score': 30},
        {'text': 'Answer 4', 'score': 40},
      ],
    },
    {
      'questionText': 'Question 2.',
      'Answer': [
        {'text': 'Answer 1', 'score': 10},
        {'text': 'Answer 2', 'score': 20},
        {'text': 'Answer 3', 'score': 30},
        {'text': 'Answer 4', 'score': 40},
      ],
    },
    {
      'questionText': 'Question 3.',
      'Answer': [
        {'text': 'Answer 1', 'score': 10},
        {'text': 'Answer 2', 'score': 20},
        {'text': 'Answer 3', 'score': 30},
        {'text': 'Answer 4', 'score': 40},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
          actions: <Widget>[
            Switch(
              inactiveThumbColor: Colors.white,
              activeColor: Colors.greenAccent,
              activeTrackColor: Colors.lightBlueAccent,
              inactiveTrackColor: Colors.redAccent,
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                  if (isSwitch == true) {
                    //b = Colors.white;
                    //w = Colors.black;
                    //wQ = Colors.white;
                  } else if (isSwitch == false) {
                    // b = Colors.black;
                    //w = Colors.white;
                    //wQ = Colors.black;
                  }
                });
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromRGBO(195, 20, 50, 1.0),
                  Color.fromRGBO(36, 11, 54, 1.0),
                ]),
          ),
          //color: w,
          width: double.infinity,
          child: questionIndex < _questions.length
              ? Quiz(_questions, questionIndex, functionAnswer)
              : Result(resutQuiiz, totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              if (questionIndex > 0) questionIndex = questionIndex - 1;
              if (questionIndex == 0) {
                totalScore -= nom0;
              }
              if (questionIndex == 1) {
                totalScore -= nom1;
              }
              if (questionIndex == 2) {
                totalScore -= nom2;
              }
            });
            // terminal for help
            print("questionIndex=$questionIndex");
            print("num0=$nom0");
            print("num1=$nom1");

            print("num2=$nom2");

            print("stotalScore=$totalScore");
          },
        ),
      ),
    );
  }
}
