import 'package:eaapp/layout/endScreen.dart';
import 'package:eaapp/layout/widgets.dart';
import 'package:eaapp/logic/questionController.dart';
import 'package:eaapp/logic/questions.dart';
import 'package:eaapp/model/quizmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentLevel = 1;
  int userPoints = 0;
  late QuizModel currentQuestion;
  late List<String> answers;
  late List<int> questionIndex;
  List<bool?> answerValidetion = [null, null, null, null];

  @override
  void initState() {
    super.initState();
    questionIndex = getRandomQuestionIndex(13);
    loadNewQuestion();
  }

  loadNewQuestion() {
    setState(() {
      currentQuestion = loadQuestion(questionIndex[currentLevel - 1]);
      answers = getRandomQuestionList(
          currentQuestion.wrongAnswers, currentQuestion.correctAnswer);
          answerValidetion = [null, null, null, null];
    });
  }

  validateAndShowQuestion(int userAnswerIndex) async {
    setState(() {
      int correctIndex = 
          getCorrectAnswerIndex(answers, currentQuestion.correctAnswer);
      answerValidetion[correctIndex] = true;
      if (userAnswerIndex == correctIndex) {
        userPoints++;
      } else {
        answerValidetion[userAnswerIndex] = false;
      }
    });

    await Future.delayed(Duration(seconds: 1));

    currentLevel++;
    if (currentLevel <= 5) {
      loadNewQuestion();
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => EndScreen(
                    userPoints: this.userPoints,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    appBar: customAppBar("Quiz"),
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
              children: [
                Spacer(
                flex: 20,
                ),
                Text(
                  currentQuestion.question,
                  style: headerTextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Spacer(
                flex: 30,
                ),
                Text(
                  "Current Level:",
                  style: normalTextStyle(color: Colors.white),
                ),
                Spacer(),
                StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: currentLevel,
                  selectedColor: Colors.green,
                  unselectedColor: Colors.red,
                ),
                Spacer(),
                Text(
                  "Points:" + userPoints.toString(),
                  style: headerTextStyle(color: Colors.grey),
                ),
                Spacer(),
                GestureDetector(
                  child: answerCard(answers[0], context,
                      answer: answerValidetion[0]), 
                  onTap: () {
                    validateAndShowQuestion(0);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[1], context,
                      answer: answerValidetion[1]), 
                  onTap: () {
                    validateAndShowQuestion(1);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[2], context,
                      answer: answerValidetion[2]), 
                  onTap: () {
                    validateAndShowQuestion(2);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[3], context,
                      answer: answerValidetion[3]), 
                  onTap: () {
                    validateAndShowQuestion(3);
                  },
                ), 
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
