import 'dart:math';

void main() {
  var random = Random();

  int randomNumber = random.nextInt(100);
  print('Random number: $randomNumber');

  double randomDouble = random.nextDouble();
  print('Random double: $randomDouble');

  bool randomBool = random.nextBool();
  print('Random bool: $randomBool');

  int min = 10, max = 20;
  int rangeRandom = min + random.nextInt(max - min);
  print('Range random: $rangeRandom');

  var fruits = ['Apple', 'Banana', 'Mango', 'Grapes'];
  var randomFruit = fruits[random.nextInt(fruits.length)];
  print('Random fruit: $randomFruit');
}
