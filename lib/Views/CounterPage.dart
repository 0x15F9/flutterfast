import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 10;

  update() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: update,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
    );
  }
}
