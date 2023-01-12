import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(                   //Container class is used so to wrapping
      width: double.infinity,           // defining size of container as infinity so that it can take as many space as it wants 
      margin: EdgeInsets.all(10),
      child : Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
      ),
    );
  }
}
