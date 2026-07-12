import 'dart:io';

// Question Class
class Question {
  String question;
  List<String> options;
  String correctAnswer;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

// Player Class
class Player {
  String name;
  int score;

  Player({required this.name, this.score = 0});
}

// Quiz Class
class Quiz {
  List<Question> questions;
  Player player;
  int currentQuestionIndex = 0;

  Quiz({required this.questions, required this.player});

  void startQuiz() {
    while (currentQuestionIndex < questions.length) {
      Question currentQuestion = questions[currentQuestionIndex];

      print("\nQuestion ${currentQuestionIndex + 1}:");
      print(currentQuestion.question);

      for (int i = 0; i < currentQuestion.options.length; i++) {
        print("${i + 1}. ${currentQuestion.options[i]}");
      }

      stdout.write("Enter option number (1-4): ");
      int? choice = int.tryParse(stdin.readLineSync() ?? "");

      if (choice != null &&
          choice >= 1 &&
          choice <= currentQuestion.options.length) {
        String selectedAnswer = currentQuestion.options[choice - 1];

        if (selectedAnswer == currentQuestion.correctAnswer) {
          print(" Correct Answer!");
          player.score++;
        } else {
          print(" Wrong Answer!");
          print("Correct Answer: ${currentQuestion.correctAnswer}");
        }
      } else {
        print(" Invalid Input!");
      }

      currentQuestionIndex++;
    }

    showScore();
  }

  void showScore() {
    print("\n========== RESULT ==========");
    print("Player Name : ${player.name}");
    print("Score       : ${player.score}/${questions.length}");
  }
}

void main() {
  // Create Player
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync() ?? "Player";

  Player player = Player(name: name);

  // Create Questions
  List<Question> questions = [
    Question(
      question: "What is the capital of France?",
      options: ["Berlin", "Madrid", "Paris", "Rome"],
      correctAnswer: "Paris",
    ),
    Question(
      question: "What is 2 + 2?",
      options: ["3", "4", "5", "6"],
      correctAnswer: "4",
    ),
    Question(
      question: "Which language is used in Flutter?",
      options: ["Java", "Python", "Dart", "C++"],
      correctAnswer: "Dart",
    ),
  ];

  // Create Quiz
  Quiz quiz = Quiz(questions: questions, player: player);

  // Start Quiz
  quiz.startQuiz();
}
