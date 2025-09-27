import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatefull());
}

class MyStatefull extends StatefulWidget {
  const MyStatefull({super.key});
  @override
  State<MyStatefull> createState() => _MyStatefullState();
}

class _MyStatefullState extends State<MyStatefull> {
  int _kelipatan = 0;
  void _kelipatanDua() {
    setState(() {
      _kelipatan += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Statefull Widget")),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child: Column(
              children: [
                const Text("Kelipatan 2 : "),
                Text(
                  '$_kelipatan',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _kelipatanDua,
          tooltip: "Kelipatan 2",
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
