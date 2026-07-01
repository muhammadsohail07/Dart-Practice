import 'dart:io';

void main() {
  File file = File('test.txt');
  String contents = file.readAsStringSync();
  print(contents);
  // get file location
  print('File path: ${file.path}');
  // get absolute path
  print('File absolute path: ${file.absolute.path}');
  // get file size
  print('File size: ${file.lengthSync()} bytes');
  // get last modified time
  print('Last modified: ${file.lastModifiedSync()}');
  File csvfile = File('test.csv');
  // read file
  String csvcontents = csvfile.readAsStringSync();
  // split file using new line
  List<String> lines = csvcontents.split('\n');
  // print file
  print('---------------------');
  for (var line in lines) {
    print(line);
  }
}
