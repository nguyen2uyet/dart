import 'dart:ffi';

void main(List<String> args) {
  //check odd
  for (int i = 1; i <= 10; i++) {
    print("Number $i is " + ((i % 2 != 0) ? "odd" : "even"));
  }

  //vowel or consonant
  var vowels = ['a', 'e', 'i', 'o', 'u'];
  for (int i = 'a'.codeUnitAt(0); i <= 'z'.codeUnitAt(0); i++) {
    print("${String.fromCharCode(i)} is " +
        (vowels.contains(String.fromCharCode(i)) ? "vowel" : "not vowel"));
  }

  //check positive, negative or zero
  var nums = [1, 2, -4, 6, 0, 7, -8];

  nums.forEach((element) {
    if (element < 0) {
      print("$element id negative ");
    } else if (element > 0) {
      print("$element id positive ");
    } else {
      print(" Zero ! ");
    }
  });

  //generate multiplication tables of 8
  for (int i = 1; i <= 10; i++) {
    print("8 x $i = ${8 * i}");
  }

  //generate multiplication tables of 1-9
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
    print("");
  }

  //
}
