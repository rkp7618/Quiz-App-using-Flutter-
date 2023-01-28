import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String ansText;
  Answer(this.selectHandler, this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(onPressed: selectHandler, child:Text(ansText)),

    );
  }
}
