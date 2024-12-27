import 'package:flutter/material.dart';
import 'package:quiz_app/view/widgets/photo_quiz_screen_body.dart';

class PhotoQuizScreen extends StatelessWidget {
  const PhotoQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PhotoQuizScreenBody(),
    );
  }
}
