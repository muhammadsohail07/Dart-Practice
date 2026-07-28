import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int target = random.nextInt(50) + 1; // 1-50
  int attempts = 0;

  print("=== 🎯 Guess the Number (1-50) ===");

  while (true) {
    stdout.write("Enter your guess: ");
    int? guess = int.tryParse(stdin.readLineSync() ?? '');
    attempts++;

    if (guess == null) {
      print("❌ Enter a valid number.");
      continue;
    }

    if (guess < target) {
      print("🔼 Too low!");
    } else if (guess > target) {
      print("🔽 Too high!");
    } else {
      print("🎉 Correct! You guessed it in $attempts attempts.");
      break;
    }
  }
}
