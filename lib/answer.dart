
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;      // Function selectHandler to get as parmeter for Answer() invokation
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {

    return Container(
        width: double.infinity,
        child: RaisedButton(
        color : Colors.blue[700],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler, 
      ),
    );
  }
}
