import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewWidget());
}

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
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
  Colors.pink,
  Colors.cyan,

] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

// ******* List of items using ListView *******

      // body: ListView(
      //  // scrollDirection: Axis.horizontal,
      //   children: [ 
      //     Container(
      //       height: 150,
      //       margin: const EdgeInsets.all(8),
      //       color: Colors.red,
      //       child: const Center(
      //         child: Text(
      //           'Item 1',
      //           style: TextStyle(fontSize: 15),
      //         ),
      //       ),
      //     ),  
      //     Container(
      //       height: 150,
      //       margin: const EdgeInsets.all(8),
      //       color: Colors.green,
      //       child: const Center(
      //         child: Text(
      //           'Item 2',
      //           style: TextStyle(fontSize: 15),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       height: 150,
      //       margin: const EdgeInsets.all(8),
      //       color: Colors.blue,
      //       child: const Center(
      //         child: Text(
      //           'Item 3',
      //           style: TextStyle(fontSize: 15),
      //         ),
      //       ),
      //      ),
      //     Container(
      //       height: 150,
      //       margin: const EdgeInsets.all(8),
      //       color: Colors.yellow,
      //       child: const Center(
      //         child: Text(
      //           'Item 4',
      //           style: TextStyle(fontSize: 15),
      //         ),
      //       ),
      //      ),
      //     Container(
      //         height: 150,
      //         margin: const EdgeInsets.all(8),
      //         color: Colors.orange,
      //         child: const Center(
      //           child: Text(
      //             'Item 5',
      //             style: TextStyle(fontSize: 15),
      //           ),
      //         ),
      //       ),
      //   ],
      // ),


// ******* List of items using ListView.builder *******

      // body: ListView.builder(
      //   itemCount: 20,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text('Item ${index + 1}'),
      //       subtitle: const Text('Subtitle'),
      //       leading: const Icon(Icons.list),
      //       trailing: const Icon(Icons.arrow_forward_ios),
      //     );
      //   },
      // ),


    // ******* List of colors using ListView.builder *******

    //   body: ListView.builder(itemBuilder: (context, index) {
    //     return Container(
    //       height: 150,
    //       margin: const EdgeInsets.all(8),
    //       color: colorPicker[index],
    //       child: Center(
    //         child: Text(
    //           'Item ${index + 1}',
    //           style: const TextStyle(fontSize: 15),
    //         ),
    //       ),
          
    //     );
    //   },
    //   itemCount: colorPicker.length,
    //  // scrollDirection: Axis.horizontal,
      
    //   ),


// ******* List of colors using ListView.separated *******

      body: ListView.separated(
        itemBuilder: (context, index) {
           return Container(
          height: 150,
          margin: const EdgeInsets.all(8),
          color: colorPicker[index],
          child: Center(
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(fontSize: 15),
            ),
          ),
        );     
        },
        separatorBuilder: (context, index) => Divider(
          height:20,
          thickness: 2,
          color: Colors.grey[300],
          indent: 16,
          endIndent: 16,
        ),
        itemCount: colorPicker.length,
       // scrollDirection: Axis.horizontal,
      ),

// ******* List of colors using ListView.custom *******

        // body: ListView.custom(
        //   childrenDelegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return Container(
        //         height: 150,
        //         margin: const EdgeInsets.all(8),
        //         color: colorPicker[index],
        //         child: Center(
        //           child: Text(
        //             'Item ${index + 1}',
        //             style: const TextStyle(fontSize: 15),
        //           ),
        //         ),
        //       );
        //     },
        //     childCount: colorPicker.length,
        //   ),
        //   // scrollDirection: Axis.horizontal,
        // ),
    );
  }
}