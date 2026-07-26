void main() {
  int n = 398293748232398;
  int count = 0;

  while (n > 0) {
    count++;
    n ~/= 10;
  }

  print(count);
}
