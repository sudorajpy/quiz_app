import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // final List<String> selectedAnswerIndex = [];
  // void choosedAnswer(String answer) {
    
  //     selectedAnswerIndex.add(answer);
  //  if(selectedAnswerIndex.length == questions.length){
  //    Navigator.of(context).pushReplacementNamed('/splash-screen');
  //  }
  // }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
