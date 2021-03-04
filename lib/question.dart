import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {
  final _question;

  Question(this._question);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(top: 20, bottom: 40),
      child: Text(
        _question,
        style: TextStyle(
          color: w,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
