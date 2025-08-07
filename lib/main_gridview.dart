import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(50, (i) => 'Item ${i + 1}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 6'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0, 
          childAspectRatio: 1
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int idx) {
          return Container(
            color: Colors.blueGrey[100 + (idx % 8) * 100],
            child: Center(child: Text(items[idx])),
          );
        },
      ),
    );
  }
}
