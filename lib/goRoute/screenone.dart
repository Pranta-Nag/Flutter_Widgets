import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screenone extends StatelessWidget {
  const Screenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Welcome to Screen One!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton.icon(
            onPressed: () {
              context.push('/screenTwo/ABCD'); // passing the ABCD data into screenTwo
            },
            icon: const Icon(Icons.headphones),
            label: const Text("Go to Screen Two"),
          ),
        ],
      ),
    );
  }
}