import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int rescore;
  final VoidCallback resethandler;
  Result(this.rescore, this.resethandler);
  String get resultphrase {
    var resultext;
    if (rescore <= 15) {
      resultext = "you are awesome ";
    } else if (rescore <= 20) {
      resultext = 'pretty good';
    } else if (rescore <= 30) {
      resultext = 'bad';
    } else {
      resultext = 'sooo sad and depression';
    }
    return resultext;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultphrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: resethandler, child: Text('restart'))
          ],
        ),
      ),
    );
  }
}
