import 'package:flutter/material.dart';

class EachQuestion extends StatelessWidget {
  EachQuestion(this.question, {super.key});
  final String question;
  @override
  Widget build(BuildContext context) {
    return Text(question);
  }
}
