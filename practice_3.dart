import 'dart:ffi';
import 'dart:io';
import 'dart:math' as math;

void printName() {
  print("Your name is: ");
  String? name = stdin.readLineSync();
  print("Hello $name");
}

void printEvenNumberBetween(int a, int b) {
  if (a < b) {
    for (int i = a; i <= b; i++) {
      print((i % 2 == 0) ? "$i" : "");
    }
  }
}

String getCharFromASCIICodeRange(int a, int b) {
  return String.fromCharCode(math.Random().nextInt(b - a) + a);
}

String randomPasswordWith8Characters(int number) {
  List<String> password = [];
  for (int i = 1; i <= number; i++) {
    List<String> list_of_char = [];
    String lowercase = getCharFromASCIICodeRange(97, 122);
    String uppercase = getCharFromASCIICodeRange(65, 90);
    String special_character_1 = getCharFromASCIICodeRange(32, 47);
    String special_character_2 = getCharFromASCIICodeRange(58, 64);
    String special_character_3 = getCharFromASCIICodeRange(91, 96);
    String special_character_4 = getCharFromASCIICodeRange(123, 126);
    list_of_char.add(lowercase);
    list_of_char.add(uppercase);
    list_of_char.add(special_character_1);
    list_of_char.add(special_character_2);
    list_of_char.add(special_character_3);
    list_of_char.add(special_character_4);
    String randomChar = list_of_char[math.Random().nextInt(6)];
    password.add(randomChar);
  }
  return password.join('');
}

double caculateAreaOfCircle(double r) {
  return math.pi * r * r;
}

double caculateHypotenuse(double a, double b) {
  return math.sqrt(a * a + b * b);
}

String reverseString(String s) {
  List<String> reverse = [];
  for (int i = (s.length - 1); i >= 0; i--) {
    reverse.add(s[i]);
  }
  return reverse.join("");
}

num pow(num a, num b) {
  return math.pow(a, b);
}

void main(List<String> args) {
  // printName();
  //printEvenNumberBetween(10, 17);
  //print(randomPasswordWith8Characters(16));
  //print(caculateAreaOfCircle(5.0));
  //print(caculateHypotenuse(3, 4));
  //print(reverseString("abcdef"));
  print(pow(10, 10));
}
