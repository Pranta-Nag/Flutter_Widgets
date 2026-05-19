import 'package:flutter/material.dart';

void main() {
  runApp(const ExpandedWidget());
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expanded Widget',
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(     
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              width: 50,
              child: const Icon(Icons.account_box, size: 20),
            ),
            Expanded(
              // flex: 2,
              child: Container(
                color: Color.fromARGB(255, 7, 185, 255),
                height: 200,
                width: 50,
                child: Icon(Icons.account_box, size: 20),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 255, 7, 243),
                height: 200,
                width: 50,
                child: Icon(Icons.account_box, size: 20),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 189, 7, 255),
              height: 200,
              width: 50,
              child: Icon(Icons.account_box, size: 20),
            ),
        
            Expanded(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 117, 255, 241),
                height: 200,
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      width: 60,
                      color: Colors.grey,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 20,
                        width: 60,
                        color: Colors.lightBlue,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 20,
                        width: 60,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 60,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
