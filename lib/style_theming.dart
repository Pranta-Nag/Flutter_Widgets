import 'package:flutter/material.dart';
import 'package:widgets/ui_hepler/text_style.dart';

void main() {
  runApp(const StyleThemeWidget());
}

class StyleThemeWidget extends StatefulWidget {
  const StyleThemeWidget({super.key});

  @override
  State<StyleThemeWidget> createState() => _StyleThemeWidgetState();
}

class _StyleThemeWidgetState extends State<StyleThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        primaryColor: Colors.blue,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.purple,
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          splashColor: Colors.red,
          elevation: 10,
        ),
        textTheme: const TextTheme(
          headlineSmall:
              TextStyle(color: Color.fromARGB(255, 195, 0, 239), fontSize: 15),
          headlineMedium:
              TextStyle(color: Color.fromARGB(255, 169, 18, 18), fontSize: 25),
          bodyMedium:
              TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
        ),
      ),
      home: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Style & Theme'),
        //backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Hello World"),
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                child: Text("Hello World"),
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                child: Text("Hello World"),
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Text("Hello World",
                  style: Theme.of(context).textTheme.headlineSmall),
              Text("Hello World",
                  style: Theme.of(context).textTheme.headlineMedium),
              Text("Hello World",
                  style: Theme.of(context).textTheme.bodyMedium),
              Text(
                "Hello World",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: const Color.fromARGB(255, 13, 83, 2),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text("Hello World", style: textStyle1),
              Text("Hello World", style: textStyle2),
              Text("Hello World",
                  style: textStyle1.copyWith(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
