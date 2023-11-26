import 'package:flutter/material.dart';

class AnswerButtons extends StatefulWidget {
  AnswerButtons(this.index, this.answerText, this.getSelectedAnswers,
      {super.key});
  final int index;
  final String answerText;
  final void Function() getSelectedAnswers;
  @override
  State<AnswerButtons> createState() {
    return _AnswerButtonsState();
  }
}

class _AnswerButtonsState extends State<AnswerButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: widget.getSelectedAnswers,
            child: Text(widget.answerText),
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 30), backgroundColor: Colors.white)),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
