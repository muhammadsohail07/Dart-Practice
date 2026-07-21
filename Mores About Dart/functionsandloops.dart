void main() {
  List<Function> funcs = [];
  for (var i = 0; i < 3; i++) {
    funcs.add(() => print(i));
  }
  for (var f in funcs) {
    f();
  }
}
