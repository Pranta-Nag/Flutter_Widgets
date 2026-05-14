import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerApp());
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Example'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20),
                child: Image.network(
                    fit: BoxFit.cover,
                    "https://images.pexels.com/photos/333529/pexels-photo-333529.jpeg"),
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20),
                child: Text(
                  textAlign: TextAlign.center,
                  'Hello, Container!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
