import 'package:flutter/material.dart';
import 'package:quiz_gmi/Models/quiz.dart';

class QuizCreatedPage extends StatefulWidget {
  Quiz quiz;

  @override
  _QuizCreatedPageState createState() => _QuizCreatedPageState();

  QuizCreatedPage(this.quiz);
}

class _QuizCreatedPageState extends State<QuizCreatedPage> {
  returnHome() {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Created"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.network(
            //     'https://cdn4.iconfinder.com/data/icons/defaulticon/icons/png/256x256/check.png'),
            Image.asset('assets/done.png'),
            Text(widget.quiz.question),
            Text(widget.quiz.correctAnswer),
            OutlineButton.icon(
              onPressed: returnHome,
              icon: Icon(Icons.home),
              label: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
