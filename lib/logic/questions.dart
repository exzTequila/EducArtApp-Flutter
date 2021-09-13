import 'package:eaapp/model/quizmodel.dart';

QuizModel loadQuestion(int questionIndex) {
List<QuizModel> questionList = [
    QuizModel("The area is called a Federal state?", "Bremen", ["Berlin", "Saarland", "Hamburg"]),
    QuizModel("What does “www” stand for in a website browser?", "World Wide Web", ["Domain name", "Hosting", "Site prefix"]),
    QuizModel("How long is an Olympic swimming pool (in meters)?", "50 meters", ["25 meters", "100 meters", "75 meters"]),
    QuizModel("Which country do cities of Perth, Adelade & Brisbane belong to?", "Australia", ["Andorra", "Benin", "Germany"]),
    QuizModel("How many languages are written from right to left?", "12", ["7", "11", "18"]),
    QuizModel("What is the name of the biggest technology company in South Korea?", "Samsung", ["Apple", "Huawei", "Intel"]),
    QuizModel("Which animal can be seen on the Porsche logo?", "Horse", ["Leopard", "Lion", "Bull"]),
    QuizModel("What is the name of the largest ocean on earth?", "Pacific Ocean", ["Atlantic Ocean", "Arctic Ocean", "Indian Ocean"]),
    QuizModel("Which country consumes the most chocolate per capita?", "Switzerland", ["Algeria", "Israel", "Canada"]),
    QuizModel("What was the first soft drink in space?", "Coca Cola", ["Pepsi", "Mirinda", "Sprite"]),
    QuizModel("What is the most consumed manufactured drink in the world?", "Tea", ["Coffee", "Soda", "Cocoa"]),
    QuizModel("What sport is dubbed the king of sports?", "Football", ["Tennis", "Hockey", "Basketball"]),
    QuizModel("What is the nearest planet to the sun?", "Mercury", ["Venus", "Mars", "Jupiter"]),
    QuizModel("What can be broken but is never held?", "A Promise", ["Icicle", "Human", "Car"]),
  ];
  return questionList[questionIndex];
}
