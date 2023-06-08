import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/splash_screen.dart';

class QuestionsScreen extends StatefulWidget {
  // final void Function(String answer) onSelectedAnswer;
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
    // widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
      // selectedAnswerIndex.add();
    });
    if (currentQuestionIndex == questions.length) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SplashScreen()));
    }
  }

final List<String> selectedAnswerIndex = [];

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 85, 42, 178),
            Color.fromARGB(255, 50, 6, 116),
            Colors.lightBlue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              ),
              
            
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: (){
                  answerQuestion();
                },
              );
            }),
          ],
        ),
      ),
    ));
  }
}
