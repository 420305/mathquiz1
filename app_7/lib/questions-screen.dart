import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer-buttons.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  Widget widgetScreen = const SizedBox();
  int currentQuestionIndex = 0;
  List<String> getShuffledAnswers(index) {
    final shuffledList = List.of(questions[index].answers);
    shuffledList.shuffle();
    return shuffledList;
  }

  String selectedAnswers = '';
  int correctAnswers = 0;
  countCorrect() {
    for (int i = 0; i < 8; i++) {
      if (questions[i].answers[0] == selectedAnswers) {
        correctAnswers++;
      }
    }

    return correctAnswers;
  }

  void showResults() {
    setState(() {
      widgetScreen = Text(
        'You answered ${correctAnswers} out of ${questions.length} questions correctly!',
        style: TextStyle(fontSize: 20),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> getShuffledAnswers(index) {
      final shuffledList = List.of(questions[index].answers);
      shuffledList.shuffle();
      return shuffledList;
    }

    return Align(
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 40),
          Text(questions[0].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(0).map((answer) {
            return AnswerButtons(0, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[1].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(1).map((answer) {
            return AnswerButtons(1, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[2].question, style: const TextStyle(fontSize: 20)),
          ...getShuffledAnswers(2).map((answer) {
            return AnswerButtons(2, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[3].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(3).map((answer) {
            return AnswerButtons(3, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[4].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(4).map((answer) {
            return AnswerButtons(4, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[5].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(5).map((answer) {
            return AnswerButtons(5, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[6].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(6).map((answer) {
            return AnswerButtons(6, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[7].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(7).map((answer) {
            return AnswerButtons(7, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[8].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(8).map((answer) {
            return AnswerButtons(8, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          const SizedBox(height: 30),
          Text(questions[9].question, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          ...getShuffledAnswers(9).map((answer) {
            return AnswerButtons(9, answer, () {
              selectedAnswers = answer;
              countCorrect();
            });
          }),
          ElevatedButton(
              onPressed: showResults,
              child: Text(
                'Results',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ))),
          const SizedBox(height: 40),
          widgetScreen,
          SizedBox(height: 40),
        ]),
      ),
    );
  }
}
