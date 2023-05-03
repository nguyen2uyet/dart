import 'dart:io';
import 'dart:convert';

void listOfNames() {
  List<String> names = ["Quyet", "Mai"];
  names.forEach((element) {
    print(element);
  });
}

void printSetOfFruits() {
  Set<String> fruits = {"Orange", "Banana", "Strawberry", "Mango"};
  fruits.forEach((element) {
    print(element);
  });
}

void printListOfExpenses() {
  Map<String, double> listOfExpenses = {
    "Quyet": 5000,
    "Mai": 4000,
    "Ly": 1000,
    "Vy": 1000,
  };
  print(listOfExpenses);
}

void nameOfDaysInAWeek() {
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  print(days);
}

void namesOfFriends() {
  List<String> names = [
    "Anna",
    "Boris",
    "Clara",
    "Dave",
    "Elena",
    "Fiora",
    "Geogre"
  ];
  print(names.where((element) => element.startsWith("A")));
}

void personInfo() {
  Map<String, dynamic> info = {
    "name": "Quyet",
    "address": "Sofia",
    "age": 30,
    "country": "Viet Nam"
  };
  print(info);
  print("Update country: ");
  String? country = stdin.readLineSync();
  info.update("country", (value) => country);
  print(info);
}

void contact() {
  Map<String, int> contact = {
    "Anna": 0888123456,
    "Boris": 0888123457,
    "Clara": 0888123458,
    "Dave": 0888123459,
  };
  print(contact.keys.where((key) => key.length == 4));
}

void checkToDoList(List<String> toDoList) {
  if (toDoList.isEmpty) {
    print("You don't have any tasks !");
  } else {
    toDoList.forEach((element) {
      print("Task ${toDoList.indexOf(element) + 1} : $element");
    });
  }
}

void addToDoList(List<String> toDoList) {
  checkToDoList(toDoList);
  print("Add your task: ");
  toDoList.add(stdin.readLineSync().toString());
  checkToDoList(toDoList);
}

void removeToDoList(List<String> toDoList) {
  checkToDoList(toDoList);
  print("Remove your task: ");
  int number_of_remove_task = int.parse(stdin.readLineSync().toString()) - 1;
  toDoList.removeAt(number_of_remove_task);
  checkToDoList(toDoList);
}

void main(List<String> args) {
  //listOfNames();
  //printSetOfFruits();
  //printListOfExpenses();
  //nameOfDaysInAWeek();
  //namesOfFriends();
  //personInfo();
  List<String> toDoList = [];
  addToDoList(toDoList);
  addToDoList(toDoList);
  removeToDoList(toDoList);
}
