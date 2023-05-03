import 'dart:io';

void writeMyNameAndRead(File file) {
  file.writeAsStringSync("Quyet");
  print(file.readAsStringSync());
}

void appendMyFriendName(File file) {
  print("Enter your friend name: ");
  List<String> content = file.readAsLinesSync();
  content.add(stdin.readLineSync().toString());
  file.writeAsStringSync(content.join("\n"));
  print(file.readAsStringSync());
}

void printCurrentDirectory() {
  print(Directory.current);
}

void copyToFile(File from, File to) {
  to.writeAsStringSync(from.readAsStringSync());
}

void deleteFile(File file) {
  file.delete();
}

void writeDataOfStudentToCSVFile(File csv) {
  Map<String, dynamic> data = {"name": "", "age": 0, "address": ""};
  print("Enter name: ");
  data.update("name", (value) => stdin.readLineSync());
  print("Enter age: ");
  data.update("age", (value) => int.parse(stdin.readLineSync().toString()));
  print("Enter address: ");
  data.update("address", (value) => stdin.readLineSync());
  List<String> content = csv.readAsLinesSync();
  content.add(data.values.join(","));
  csv.writeAsStringSync(content.join("\n"));
}

void readDataOfStudentsInCSVFile(File csv) {
  List<String> content = csv.readAsLinesSync();
  content.forEach((data_of_a_student) {
    List<String> student = data_of_a_student.split(",");
    print("Name: ${student[0]} Age: ${student[1]} Adress: ${student[2]}");
  });
}

void main(List<String> args) {
  File file = File("hello.txt");
  File file_copy = File("hello_copy.txt");
  File file_csv = File("students.csv");
  //writeMyNameAndRead(file);
  //appendMyFriendName(file);
  //printCurrentDirectory();
  //copyToFile(file, file_copy);
  //deleteFile(file_copy);
  writeDataOfStudentToCSVFile(file_csv);
  readDataOfStudentsInCSVFile(file_csv);
}
