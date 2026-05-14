import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell Widget'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Center(
        child: Material(
          color: Colors.transparent,

          child: InkWell(
            borderRadius: BorderRadius.circular(10),

            splashColor: Colors.white24,
            highlightColor: Colors.white10,

            onTap: () {
              showDialog(
                context: context,

                builder: (context) {
                  return AlertDialog(
                    title: const Text('Tapped'),

                    content: const Text(
                      'You tapped the container.',
                    ),

                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },

            onLongPress: () {
              showDialog(
                context: context,

                builder: (context) {
                  return AlertDialog(
                    title: const Text('Long Pressed'),

                    content: const Text(
                      'Choose an option',
                    ),

                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Saved Successfully'),
                            ),
                          );
                        },

                        child: const Text('Save'),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Sent Successfully'),
                            ),
                          );
                        },

                        child: const Text('Send'),
                      ),
                    ],
                  );
                },
              );
            },

            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),

              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),

              child: const Text(
                'Tap or Long Press Me',

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}