import 'package:flutter/material.dart';

class Screenfour extends StatelessWidget {
  final int id;
  final String name;
  final double salary;

  const Screenfour({
    super.key,
    required this.id,
    required this.name,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Four'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'Welcome to Screen Four\n'
          'ID: $id\n'
          'Name: $name\n'
          'Salary: $salary',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}