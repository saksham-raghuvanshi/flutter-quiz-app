import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionstatus = 0;

  void questionInc() {
    setState(() {
      questionstatus++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionstatus];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: questionInc);
            }),
          ],
        ),
      ),
    );
  }
}


//Main Axis for Vertical
//Cross Axis for horizontal