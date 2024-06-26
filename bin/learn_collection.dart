import 'learn_class.dart';

void main() {
  var menu = MenuItem("veg", 10);
  var vegPizza = Pizza(["broccoli", "sausage"], "Veg Pizza", 20);
  var collection = Collection<MenuItem>("menu item", [menu, vegPizza]);
  print(collection.randomItem());
}

class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);
  T randomItem() {
    data.shuffle();
    return data[0];
  }
}