//lops and conditions
void main() {
  int num1 = 7;
  if (num1 % 2 == 0) {
    print("$num1 is Even");
  } else {
    print("$num1 is Odd");
  }

  int age = 16;
  if (age >= 18) {
    print("Eligible to vote");
  } else {
    print("Not eligible to vote");
  }

  int marks = 75;
  if (marks >= 90) {
    print("Grade A+");
  } else if (marks >= 80) {
    print("Grade A");
  } else if (marks >= 70) {
    print("Grade B");
  } else if (marks >= 60) {
    print("Grade C");
  } else {
    print("Grade F");
  }

  int num2 = -5;
  if (num2 > 0) {
    print("$num2 is Positive");
  } else if (num2 < 0) {
    print("$num2 is Negative");
  } else {
    print("$num2 is Zero");
  }

  int year = 2024;
  if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
    print("$year is a Leap Year");
  } else {
    print("$year is not a Leap Year");
  }

  int a = 10, b = 20, c = 5;
  int largest = a;
  if (b > largest) largest = b;
  if (c > largest) largest = c;
  print("Largest number is $largest");

  String day = "Saturday";
  switch (day) {
    case "Saturday":
    case "Sunday":
      print("It's a Weekend");
      break;
    default:
      print("It's a Weekday");
  }

  for (int i = 1; i <= 10; i++) {
    print("Number: $i");
  }

  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }

  for (int i = 10; i >= 1; i--) {
    print("Countdown: $i");
  }

  int sum = 0;
  for (int i = 1; i <= 100; i++) {
    sum += i;
  }
  print("Sum of 1 to 100 is $sum");

  int factorial = 1;
  int num3 = 5;
  for (int i = 1; i <= num3; i++) {
    factorial *= i;
  }
  print("Factorial of $num3 is $factorial");

  int count = 0;
  while (count < 5) {
    print("While loop count: $count");
    count++;
  }

  int n = 1;
  do {
    print("Do While count: $n");
    n++;
  } while (n <= 5);

  for (int i = 1; i <= 5; i++) {
    if (i == 3) continue;
    print("Skip 3, current: $i");
  }

  for (int i = 1; i <= 10; i++) {
    if (i == 6) break;
    print("Break at 6, current: $i");
  }

  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      print("*");
    }
  }

  int fibo1 = 0, fibo2 = 1;
  print("Fibonacci Series:");
  for (int i = 1; i <= 10; i++) {
    print(fibo1);
    int nextFibo = fibo1 + fibo2;
    fibo1 = fibo2;
    fibo2 = nextFibo;
  }

  int checkNum = 29;
  bool isPrime = true;
  if (checkNum <= 1) {
    isPrime = false;
  } else {
    for (int i = 2; i <= checkNum ~/ 2; i++) {
      if (checkNum % i == 0) {
        isPrime = false;
        break;
      }
    }
  }
  print("$checkNum is Prime: $isPrime");

  int reverseNum = 1234;
  int reversed = 0;
  int temp = reverseNum;
  while (temp > 0) {
    int digit = temp % 10;
    reversed = reversed * 10 + digit;
    temp ~/= 10;
  }
  print("Reversed number is $reversed");
}
