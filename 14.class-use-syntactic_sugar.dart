class Person {
  String name;
  int age;
  Person(this.name, [this.age = 18]);
}

class Vehicle {
  String model;
  int year;
  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }
}
