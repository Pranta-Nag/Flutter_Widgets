import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({super.key, required this.title});

  final String title;

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome to Screen Two! ${widget.title}', // print the ABCD data
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.push("/screenone");
            },
            child: const Text("Go to Screen One"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go("/");
            },
            child: const Text("Go to Home"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go("/screenone");
            },
            child: const Text("Go to Screen One (go)"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go("/screenthree/1/Pranta/45000");
            },
            child: const Text("Go to Screen Three"),
          ),
        ],
      ),
    );
  }
}
