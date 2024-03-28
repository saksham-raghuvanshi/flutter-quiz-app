import "package:flutter/material.dart";
import "package:quiz_app/question_screen.dart";
import "start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // var activeScreen = const StartScreen();
  Widget activeScreen = const StartScreen();

  void SwitchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 13, 168)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: activeScreen,
      )),
    );
  }
}