import 'package:flutter/material.dart';
import 'package:quiz_gmi/Views/CounterPage.dart';
import 'package:quiz_gmi/Views/CreateQuizPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  changePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreateQuizPage()),
    );
  }

  changePageCounter() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CounterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hilla is the best"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: null,
              child: Text("Attempt Quiz"),
            ),
            OutlineButton(
              onPressed: changePage,
              child: Text("Add"),
            ),
            FlatButton(
              onPressed: changePageCounter,
              child: Text("About"),
            )
          ],
        ),
      ),
    );
  }
}
