import 'package:flutter/material.dart';

void main() {
  runApp(const CircleAvatarWidgets());
}

class CircleAvatarWidgets extends StatelessWidget {
  const CircleAvatarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://images.pexels.com/photos/6413661/pexels-photo-6413661.jpeg',
      'https://images.pexels.com/photos/6475186/pexels-photo-6475186.jpeg',
      'https://images.pexels.com/photos/7275812/pexels-photo-7275812.jpeg',
      'https://images.pexels.com/photos/5798534/pexels-photo-5798534.jpeg',
    ];

    final List<String> names = [
      'Galib',
      'Yasin',
      'Pranta',
      'Rana',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(images[index]),
                ),

                const SizedBox(width: 15),

                Text(
                  names[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Spacer(),

                const Text(
                  "Active",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}