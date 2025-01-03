import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';

class PhotoQuizScreenBody extends StatefulWidget {
  const PhotoQuizScreenBody({super.key});

  @override
  State<PhotoQuizScreenBody> createState() => _PhotoQuizScreenBodyState();
}

class _PhotoQuizScreenBodyState extends State<PhotoQuizScreenBody> {
  int currentIndex = 0;
  int counterOfCorrectAnswers = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff0B0A4C),
            Color(0xff4B169D),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/Pattern.png',
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 54,
                            height: 54,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: Colors.white.withOpacity(0.15),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(
                          right: 20,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(77),
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color(0xff8273E9),
                          ),
                        ),
                        child: Text(
                          'Q${currentIndex + 1}/${questions.length}',
                          style: const TextStyle(
                            fontFamily: 'NoirPro',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/image.png',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        questions[currentIndex].question,
                        style: const TextStyle(
                          fontFamily: 'NoirPro',
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: List.generate(
                          questions[currentIndex].options.length,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16, left: 40, right: 40),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (questions[currentIndex]
                                            .options[index] ==
                                        questions[currentIndex].correctAnswer) {
                                      counterOfCorrectAnswers++;
                                    }
                                    if (currentIndex < questions.length - 1) {
                                      currentIndex++;
                                    } else {
                                      currentIndex = 0;
                                      counterOfCorrectAnswers = 0;
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff6835B6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  minimumSize: const Size(double.infinity, 70),
                                ),
                                child: Text(
                                  questions[currentIndex].options[index],
                                  style: const TextStyle(
                                    fontFamily: 'NoirPro',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
