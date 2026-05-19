import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// passing multiple parameters
class Screenthree extends StatelessWidget {
  const Screenthree({
    super.key,
    required this.id,
    required this.name,
    required this.salary,
  });

  final int id;
  final String name;
  final double salary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Name is: $name\nID: $id\nSalary: $salary",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            context.push("/screenthree/$id/$name/$salary/screenfour");
            // passing multiple parameters to screenfour 
          }, child: const Text("Go to Screen Four")),
        ],
        
      ),
    );
  }
}
