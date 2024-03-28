import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";

class QuestionsScreen extends StatefulWidget {
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer Text1 ', onTap: () {}),
          AnswerButton(answerText: 'Answer Text2 ', onTap: () {}),
          AnswerButton(answerText: 'Answer Text3 ', onTap: () {}),
        ],
      ),
    );
  }
}
