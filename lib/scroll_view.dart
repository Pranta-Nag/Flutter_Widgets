import 'package:flutter/material.dart';

void main() {
  runApp(const ScrollViewWidget());
}

class ScrollViewWidget extends StatefulWidget {
  const ScrollViewWidget({super.key});

  @override
  State<ScrollViewWidget> createState() => _ScrollViewWidgetState();
}

class _ScrollViewWidgetState extends State<ScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

List<Color> colorPicker = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,

] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollView Widget'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: SingleChildScrollView(
        child: Column(
          // children: List.generate(
          //   20,
          //   (index) => Container(
          //     height: 100,
          //     margin: const EdgeInsets.all(8),
          //     color: Colors.blue[100 * ((index % 8) + 1)],
          //     child: Center(
          //       child: Text(
          //         'Item ${index + 1}',
          //         style: const TextStyle(fontSize: 18),
          //       ),
          //     ),
          //   ),
          // ),
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: colorPicker [0],       
                    child: const Center(
                      child: Text(
                        'Item 1',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: colorPicker [1],       
                    child: const Center(
                      child: Text(
                        'Item 1',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: colorPicker [2],       
                    child: const Center(
                      child: Text(
                        'Item 1',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: colorPicker [3],       
                    child: const Center(
                      child: Text(
                        'Item 1',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: colorPicker [4],       
                    child: const Center(
                      child: Text(
                        'Item 1',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: colorPicker [5],       
                    child: const Center(
                      child: Text(
                        'Item 1',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Container(
              height: 100,
              margin: const EdgeInsets.all(8),
              color: colorPicker[1],
              child: const Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
             Container(
              height: 100,
              margin: const EdgeInsets.all(8),
              color: colorPicker[2],
              child: const Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
             Container(
              height: 100,
              margin: const EdgeInsets.all(8),
              color: colorPicker[3],
              child: const Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
             Container(
              height: 100,
              margin: const EdgeInsets.all(8),
              color: colorPicker[4],
              child: const Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
             Container(
              height: 100,
              margin: const EdgeInsets.all(8),
              color: colorPicker[5],
              child: const Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}