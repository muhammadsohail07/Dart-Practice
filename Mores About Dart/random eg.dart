import 'dart:math';

void main() {
  var rnd = Random();

  int num1 = rnd.nextInt(100) + 1;
  print(num1);

  List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange', 'Grapes'];

  String f = fruits[rnd.nextInt(fruits.length)];
  print(f);

  sayHi(f);

  for (var i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  if (num1 % 2 == 0) {
    print("$num1 is Even");
  } else {
    print("$num1 is Odd");
  }
}

void sayHi(String x) {
  print("Aj ka fruit hai $x");
}
