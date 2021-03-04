import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuizz;
  final int scoreshow;
  Result(this.resetQuizz, this.scoreshow);

  String get desgreeScore {
    String degre;
    if (scoreshow <= 10) {
      degre = "You are so Bad BOY !";
    } else if (scoreshow <= 30) {
      degre = "You are bad";
    } else if (scoreshow <= 70) {
      degre = "Your are nice";
    } else {
      degre = "Hot level !";
    }
    return degre;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 35, top: 15),
            child: Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                desgreeScore +" = $scoreshow      ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.yellow),
              ),
            ),
          ),
          FlatButton(
              onPressed: resetQuizz,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 55),
                child: Text(
                  "Click to Return!--> ",
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
              ))
        ],
      ),
    );
  }
}
