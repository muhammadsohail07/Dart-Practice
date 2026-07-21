void main() {
  Map<String, int> scores = {'Ali': 90, 'Sara': 85};
  scores['Ahmed'] = 78;
  scores['Sara'] = 95;
  scores.remove('Ali');
  scores.forEach((key, value) {
    print('$key: $value');
  });
}
