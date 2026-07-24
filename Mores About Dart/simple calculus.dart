void main() {
  print("Topic: Velocity");

  double pos(double t) {
    return 5 * t * t;
  }

  double t = 3;
  double h = 0.0001;
  double velocity = (pos(t + h) - pos(t)) / h;

  print("Position s(t) = 5t^2");
  print("Velocity at t=3 is $velocity");
}