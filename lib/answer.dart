import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answers;
  final Function anwserFunction;

  Answer(this.answers,this.anwserFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      height: 65,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: Color.fromRGBO(255, 102, 102, 10),
        textColor: Colors.white,
        splashColor: Colors.blueGrey,
        child: Text(
          answers,
          style: TextStyle(fontSize: 17),
          textAlign: TextAlign.center,
        ),
        //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 120),
        onPressed: anwserFunction,
      ),
    );
  }
}
