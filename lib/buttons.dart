import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonsAll());
}

class ButtonsAll extends StatelessWidget {
  const ButtonsAll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.limeAccent,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                  ),
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  onPressed: () {},
                  onLongPress: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Choose Option'),
                          content: const Text(
                            'What do you want to do?',
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
                  child: const Text('Outlined Button'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
