import 'dart:ffi';

class Laptop {
  int? id;
  String? name;
  int? ram;

  Laptop(this.id, this.name, this.ram);

  @override
  String toString() {
    // TODO: implement toString
    return "id = $id, name = $name, ram = $ram ";
  }
}

class House {
  int? id;
  String? name;
  double? prize;

  House(this.id, this.name, this.prize);

  @override
  String toString() {
    // TODO: implement toString
    return "[id=$id, name=$name, prize=$prize]\n";
  }
}

class Animal {
  int? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);

  @override
  String toString() {
    // TODO: implement toString
    return "[id = $id, name=$name, color=$color]";
  }
}

class Cat extends Animal {
  String? sound;
  Cat(int id, String name, String color, String sound)
      : super(id, name, color) {
    this.sound = sound;
  }
  @override
  String toString() {
    return super.toString() + ", sound=$sound";
  }
}

class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _prize;

  int? get id => this._id;

  set id(int? value) => this._id = value;

  get brand => this._brand;

  set brand(value) => this._brand = value;

  get color => this._color;

  set color(value) => this._color = value;

  get prize => this._prize;

  set prize(value) => this._prize = value;

  @override
  String toString() {
    return "id=$id, brand=$brand, color=$color, prize=$prize ";
  }
}

abstract class Bottle {
  open();
  factory Bottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  open() {
    // TODO: implement open
    print("Coke bottle is opened !");
    //throw UnimplementedError();
  }
}

enum gender { MALE, FEMALE, GAY, LES }

void printLaptops() {
  print(Laptop(1, "DELL", 16));
  print(Laptop(2, "ACER", 32));
  print(Laptop(3, "Toshiba", 16));
}

void printListOfHouse() {
  List<House> houses = [];
  houses.add(House(1, "house_1", 1000));
  houses.add(House(2, "house_2", 2000));
  houses.add(House(3, "house_3", 3000));
  print(houses);
}

void printEnum() {
  print(gender.values);
}

void createAnObjectOfCatAndPrint() {
  print(Cat(1, "Tom", "Blue", "Meow"));
}

void createAnCokeBottleObjectAndPrint() {
  Bottle().open();
}

void createCameras() {
  Camera c1 = Camera();
  c1.id = 1;
  c1.brand = "Canon";
  c1.color = "Black";
  c1.prize = 1000.0;
  Camera c2 = Camera();
  c2.id = 1;
  c2.brand = "Canon";
  c2.color = "Black";
  c2.prize = 1000.0;
  Camera c3 = Camera();
  c3.id = 1;
  c3.brand = "Canon";
  c3.color = "Black";
  c3.prize = 1000.0;
  print(c1);
  print(c2);
  print(c3);
}

void main(List<String> args) {
  //printLaptops();
  //printListOfHouse();
  //printEnum();
  //createAnObjectOfCatAndPrint();
  //createCameras();
  createAnCokeBottleObjectAndPrint();
}
