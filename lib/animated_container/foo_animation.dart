import 'package:flutter/material.dart';

void main() {
  runApp(const FooAnimation());
}

class FooAnimation extends StatefulWidget {
  const FooAnimation({super.key});

  @override
  State<FooAnimation> createState() => _FooAnimationState();
}

class _FooAnimationState extends State<FooAnimation> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  double _width = 400.0;
  double _height = 300.0;
  bool flag = true;

  Decoration _myDecoration = BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2.0,
    ),
    borderRadius: BorderRadius.circular(8),
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foo Animation'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              margin: EdgeInsets.all(10),
              duration: const Duration(seconds: 2),
              curve: Curves.bounceInOut,
              transformAlignment: Alignment.centerLeft,
              clipBehavior: Clip.antiAliasWithSaveLayer,

              width: _width,
              height: _height,
              decoration: _myDecoration,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // For toggling animation

                  if (flag) {
                    _width = 300.0;
                    _height = 400.0;

                    _myDecoration = BoxDecoration(
                      image:const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/17714769/pexels-photo-17714769.jpeg"), fit: BoxFit.cover),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    );

                    flag = false;
                  } else {
                    _width = 400.0;
                    _height = 300.0;
                  
                    _myDecoration = BoxDecoration(
                      image:const DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3779461/pexels-photo-3779461.jpeg"), fit: BoxFit.cover),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                    );

                    flag = true;
                  }
                });
              },
              child: const Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
