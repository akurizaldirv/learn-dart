void main() {
  var noodle = MenuItem("very delizio noodle", 10.95);
  print(noodle);

  var vegPizza = Pizza(["Sausage", "Broccoli"], "Vegetable Pizza", 20.90);
  print(vegPizza);
}


class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);

  @override
  String toString() {
    return "$name -> $price";
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.name, super.price);

  @override
  String toString() {
    String topping = "";

    for (var top in toppings) {
      topping += "$top \t";
    }

    return "$name -> $price \n----- contains: $topping";
  }
}