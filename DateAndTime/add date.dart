void main() {
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  if (DateTime.now().weekday == 1) {
    print("Today is " + days[0]);
  } else if (DateTime.now().weekday == 2) {
    print("Today is " + days[1]);
  } else if (DateTime.now().weekday == 3) {
    print("Today is " + days[2]);
  } else if (DateTime.now().weekday == 4) {
    print("Today is " + days[3]);
  } else if (DateTime.now().weekday == 5) {
    print("Today is " + days[4]);
  } else if (DateTime.now().weekday == 6) {
    print("Today is " + days[5]);
  } else if (DateTime.now().weekday == 7) {
    print("Today is " + days[6]);
  }
  if (DateTime.now().month == 1) {
    print("Month is " + months[0]);
  } else if (DateTime.now().month == 2) {
    print("Month is " + months[1]);
  } else if (DateTime.now().month == 3) {
    print("Month is " + months[2]);
  } else if (DateTime.now().month == 4) {
    print("Month is " + months[3]);
  } else if (DateTime.now().month == 5) {
    print("Month is " + months[4]);
  } else if (DateTime.now().month == 6) {
    print("Month is " + months[5]);
  } else if (DateTime.now().month == 7) {
    print("Month is " + months[6]);
  } else if (DateTime.now().month == 8) {
    print("Month is " + months[7]);
  } else if (DateTime.now().month == 9) {
    print("Month is " + months[8]);
  } else if (DateTime.now().month == 10) {
    print("Month is " + months[9]);
  } else if (DateTime.now().month == 11) {
    print("Month is " + months[10]);
  } else if (DateTime.now().month == 12) {
    print("Month is " + months[11]);
  }

  DateTime datetime = DateTime.now();
  datetime = datetime.add(Duration(days: 5));
  print("Year is " + datetime.year.toString());
  print("Month is " + datetime.month.toString());
  print("Day is " + datetime.day.toString());
}
