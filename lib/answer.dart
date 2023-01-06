import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthaandler;
  final String answertext;

  const Answer(this.selecthaandler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Colors.lightGreen;
              return Colors.purple;
            },
          ),
        ),
        child: Text(answertext),
        onPressed: selecthaandler,
      ),
    );
  }
}
