import "dart:io";

String prompt(String promptText){
  print(promptText);
  String answer = stdin.readLineSync();
  return answer;
}

double promptDouble(String promptText){
  print(promptText);
  double myNum = double.parse(stdin.readLineSync());
  return myNum;
}

class MathQuestion{
  String question;
  double answer;

  MathQuestion(String aQuestion, double aAnswer){
  this.question = aQuestion;
  this.answer = aAnswer;
  }

}

void main() {
  List<MathQuestion> questions = [MathQuestion("10 + 5", 15.0), MathQuestion("5 * 6", 30.0), MathQuestion("9 / 3", 30.0),  MathQuestion("5 - 3", 2.0), MathQuestion("5 % 3", 2.0)];

  int score = 0;
  for(MathQuestion mathQuestion in questions) {
    double userAnswer = promptDouble(mathQuestion.question);
    if(userAnswer == mathQuestion.answer){
      score++;
    }
  }
  print("You scored ${score / questions.length * 100}%");
}
