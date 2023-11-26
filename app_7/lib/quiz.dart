import 'package:app_7/questions-screen.dart';
import 'package:flutter/material.dart';
import 'start-screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var screen = 'start-screen';
  void changeScreen() {
    setState(() {
      screen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(changeScreen);

    if (screen == 'questions-screen') {
      screenWidget = QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 180, 184, 192),
            title: const Text('Math Quiz',
                style: TextStyle(color: Colors.white, fontSize: 26))),
        body: Container(
          child: screenWidget,
        ),
      ),
    );
  }
}
