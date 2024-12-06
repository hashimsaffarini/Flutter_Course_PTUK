import 'package:first_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App', // hard coded
      home: HomePage(),
    );
  }
}



//! Naming Convention:
//* variable: lowerCamelCase (userName)
//* class / widget : UpperCamelCase (HomePage)
//* constant: UPPER_CASE (FirstApp)
//* file name: snake_case (main.dart)
//* function: lowerCamelCase (printName)
//* private variable: _lowerCamelCase (_userName)