import 'package:flutter/material.dart';
import 'package:quiz_app/view/screens/splash_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: SplashScreen(),
    );
  }
}
