import 'package:eaapp/layout/quizPage.dart';
import 'package:eaapp/layout/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartPage());
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.fitHeight)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Welcome to the Quiz App",
                  style: headerTextStyle(color: Colors.white),
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QuizPage()));
                    },
                    child: Text("Start Quiz")),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
