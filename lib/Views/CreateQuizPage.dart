import 'package:flutter/material.dart';
import 'package:quiz_gmi/Models/quiz.dart';
import 'package:quiz_gmi/Views/QuizCreatedPage.dart';

class CreateQuizPage extends StatefulWidget {
  @override
  _CreateQuizPageState createState() => _CreateQuizPageState();
}

class _CreateQuizPageState extends State<CreateQuizPage> {
  TextEditingController questionController = new TextEditingController();

  TextEditingController correctAnswerController = new TextEditingController();

  TextEditingController wrongAnswerController = new TextEditingController();

  outputText() {
    print(questionController.text);
    print(correctAnswerController.text);
    print(wrongAnswerController.text);
  }

  changePage() {
    Quiz quiz = new Quiz();
    quiz.question = questionController.text;
    quiz.correctAnswer = correctAnswerController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizCreatedPage(quiz),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Quiz"),
        actions: [
          FlatButton.icon(
            onPressed: changePage,
            icon: Icon(Icons.save),
            label: Text("Save"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: outputText,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Question"),
          TextFormField(
            controller: questionController,
            decoration: InputDecoration(
              hintText: "Enter your question",
            ),
            minLines: 3,
            maxLines: 3,
          ),
          Text("Correct Answer"),
          TextFormField(
            controller: correctAnswerController,
            decoration: InputDecoration(
              hintText: "Correct Answer",
            ),
          ),
          Text("Wrong Answers"),
          TextFormField(
            controller: wrongAnswerController,
            decoration: InputDecoration(
              hintText: "Wrong Answer",
            ),
          ),
        ],
      ),
    );
  }
}
