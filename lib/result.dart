import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQz;

  Result(this.resultScore, this.resetQz);

  String get resultPharase {
    var resultText = 'You did it !';
    if (resultScore <= 8) {
      resultText = 'You are Awesome !';
    } else if (resultScore <= 12) {
      resultText = 'Preety Awesome !';
    } else if (resultScore <= 16) {
      resultText = 'Huhh....You are Strange !';
    } else {
      resultText = 'You are allien ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        (Text(
          resultPharase,
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.deepOrange),
        )),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.orange),
            ),

            onPressed: resetQz,
            child: Text('Reset'))
      ],
    ));
  }
}
