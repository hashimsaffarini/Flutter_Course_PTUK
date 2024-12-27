import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/view/screens/photo_quiz_screen.dart';
import 'package:quiz_app/view/widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) {
    //           return const PhotoQuizScreen();
    //         },
    //       ),
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 186),
                        child: SvgPicture.asset('assets/Logo.svg'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Photo ',
                        style: TextStyle(
                          fontFamily: 'NoirPro',
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Quiz',
                        style: TextStyle(
                          fontFamily: 'NoirPro',
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff00EFFF),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 123,
                  ),
                  CustomButton(
                    title: 'Photo Quiz',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const PhotoQuizScreen();
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const CustomButton(
                    title: 'Memory Match',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

