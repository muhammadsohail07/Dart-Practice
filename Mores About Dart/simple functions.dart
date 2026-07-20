import 'dart:math';

void main() {
  print(add(5, 3));
  print(subtract(10, 4));
  print(multiply(6, 7));
  print(divide(20, 4));

  var numbers = [12, 45, 3, 67, 23, 89, 1];
  print(findMax(numbers));
  print(findMin(numbers));
  print(sumList(numbers));
  print(average(numbers));

  print(isPrime(29));
  print(factorial(5));
  print(fibonacci(10));
  print(reverseString('Pakistan'));
  print(isPalindrome('madam'));
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int multiply(int a, int b) => a * b;
double divide(int a, int b) => a / b;

int findMax(List<int> list) => list.reduce((a, b) => a > b ? a : b);
int findMin(List<int> list) => list.reduce((a, b) => a < b ? a : b);
int sumList(List<int> list) => list.reduce((a, b) => a + b);
double average(List<int> list) => sumList(list) / list.length;

bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) return false;
  }
  return true;
}

int factorial(int n) => n <= 1 ? 1 : n * factorial(n - 1);

int fibonacci(int n) {
  if (n <= 1) return n;
  int a = 0, b = 1;
  for (int i = 2; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}

String reverseString(String s) => s.split('').reversed.join();

bool isPalindrome(String s) => s == reverseString(s);
