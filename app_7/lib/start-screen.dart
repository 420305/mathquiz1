import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/math-symbols-png-open-2000.png',
              width: 250, height: 250),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Ready for the quiz?',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 25),
          OutlinedButton.icon(
            onPressed: switchScreen,
            label: const Text('Start quiz'),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.deepPurple),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
