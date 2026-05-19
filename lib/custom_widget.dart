import 'package:flutter/material.dart';

void main() {
  runApp(const CustomWidget());
}

class CustomWidget extends StatefulWidget {
  const CustomWidget({super.key});

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Widget',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 96, 5, 79),
      ),
      body: const Column(
        children: [
          TopSection(),
          MiddleTopSection(),
          MiddleBottomSection(),
          DownSection(),
        ],
      ),
    );
  }
}

// Down Section
class DownSection extends StatelessWidget {
  const DownSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 400,
        color: Colors.amber.shade50,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 1,
          children: List.generate(
            8,
            (index) {
              return Card(
                shadowColor: Colors.blueGrey,
                margin: const EdgeInsets.all(10),
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Item $index",
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// Middle Bottom Section
class MiddleBottomSection extends StatelessWidget {
  const MiddleBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 300,
        color: Colors.green.shade100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Box $index",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Middle Top Section
class MiddleTopSection extends StatelessWidget {
  const MiddleTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        color: Colors.grey.shade200,
        height: 500,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => ListTile(
            leading: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.brown,
            ),
            title: Text("Item $index"),
            subtitle: Text("Subtitle $index"),
            trailing: const Icon(Icons.add_shopping_cart_sharp),
          ),
        ),
      ),
    );
  }
}

// Top Section
class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.grey.shade400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding:const EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 30,
                backgroundColor:const Color.fromARGB(255, 2, 57, 88),
                child: Text(
                  "$index",
                  style:const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
