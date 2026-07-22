void main() {
  List<List<int>> matrixA = [
    [1, 2],
    [3, 4],
  ];

  List<List<int>> matrixB = [
    [5, 6],
    [7, 8],
  ];

  List<List<int>> result = [
    [0, 0],
    [0, 0],
  ];

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      result[i][j] = 0;

      for (int k = 0; k < 2; k++) {
        result[i][j] += matrixA[i][k] * matrixB[k][j];
      }
    }
  }

  print("Matrix Multiplication:");
  for (var row in result) {
    print(row);
  }
}
