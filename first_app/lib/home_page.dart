import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String userName = 'John Doe';
  int currentIndex = 0;
  List<String> images = [
    'assets/first_image.png',
    'assets/sec_image.png',
    'assets/third_image.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.8),
        title: Text('Welcome $userName'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  images[currentIndex],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  onPressed: () {
                    setState(() {
                      currentIndex++;
                      if (currentIndex == images.length) {
                        currentIndex = 0;
                      }
                    });
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// assets .. images / fonts / videos / json / txt