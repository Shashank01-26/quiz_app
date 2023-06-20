import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter The Fun way",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 23,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed:startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon:const Icon(
              Icons.arrow_forward_outlined,
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
