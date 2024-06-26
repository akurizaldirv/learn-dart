import "car.dart";

class Avanza implements Car {
  @override
  String name;

  Avanza(this.name);

  @override
  void drive() {
    print("Avanza $name is starting");
  }

  @override
  int getTire() {
    return 4;
  }
  
}