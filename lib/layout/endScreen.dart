import 'package:eaapp/layout/widgets.dart';
import 'package:eaapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EndScreen extends StatelessWidget {
  final int userPoints;

  const EndScreen({ Key? key, required this.userPoints}) : super(key: key);

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
                  "Quiz Finished",
                  style: headerTextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  "You have " +
                      userPoints.toString() + 
                      " answered correctly out of 5 Questions.",
                  textAlign: TextAlign.center,
                  style: headerTextStyle(color: Colors.white),
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StartPage()));
                    },
                    child: Text("To Home Page")),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
