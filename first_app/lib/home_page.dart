import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  final String userName = 'John Doe';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0xFF51535E),
        // backgroundColor: const Color.fromARGB(255, 102, 85, 137),
        // backgroundColor: Colors.red,
        backgroundColor: Colors.blue.withOpacity(0.8),
        title: Text('Welcome $userName'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
//color
