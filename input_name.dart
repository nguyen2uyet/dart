import "dart:io";

void main(List<String> args) {
  print("Enter name: ");
  String? name = stdin.readLineSync();
  print("Enter age: ");
  int? age = int.parse(stdin.readLineSync()!);
  print("Enter salary: ");
  double? salary = double.parse(stdin.readLineSync()!);
  print("""Hello $name !
  Age $age
  Salary $salary
    """);
}
