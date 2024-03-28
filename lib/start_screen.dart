import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //  Opacity(
          //   opacity: 0.1,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the Fun Way ",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              // child: const Text(
              //   "Start Quiz",
              // ))
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
              ))
          //Button with icon //Call label if use .icon
        ],
      ),
    );
  }
}
