import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qText;

  Question(this.qText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(35),
      child: Text(
        qText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
