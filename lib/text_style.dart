import 'package:flutter/material.dart';

void main() {
  runApp(const TextStyleWidget());
}

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          title: const Text('TextStyle Example'),
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        body:const Center(
          child: Text(
            'Hello, TextStyle!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent,
              backgroundColor: Color.fromARGB(255, 255, 0, 242),
              letterSpacing: 2.0,
              wordSpacing: 4.0,
              fontFamily: 'Roboto',
              decoration: TextDecoration.underline,
              decorationColor: Colors.deepPurpleAccent,
              decorationThickness: 2.0,
              shadows: [
                Shadow(
                  color: Colors.lightGreenAccent,
                  offset: Offset(2, 2),
                  blurRadius: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

