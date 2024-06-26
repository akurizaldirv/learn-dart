import "../data/category.dart";
import "../data/car.dart";
import "../data/avanza.dart";
import "../data/mixin_impl.dart";
import "../data/repository.dart";
import "../data/callable.dart";

// // ALIAS
typedef Jumlah = Sum;
typedef Total = Sum;

void main(List<String> args) {
  // // CATEGORY --- ACCESS MODIFIER
  // Category category = Category("1", "Food");
  // print(category);
  // // print(category._id); // cannot access it (cause private)
  // category.id = "123";
  // print(category.id);

  // // CAR --- INTERFACE
  // Car car = Car("simple car");
  // print(car.getTire());
  // car.drive();

  // Car avanza = Avanza("X123");
  // print(avanza.getTire());  
  // avanza.drive();

  // // MIXIN 
  // var video = Video();
  // video.name = "Video Dart";
  // video.play();
  // video.stop();  

  // // TOSTRING
  // var category = Category("666", "Satans");
  // print(category);

  // // EQUALS OPERATOR CUSTOM
  // var cat1 = Category("123", "Food");
  // var cat2 = Category("123", "Food");
  // var cat3 = Category("123", "beverage");
  // var car = Car("Avanza");
  // print(cat1 == cat2); // true
  // print(cat1 == cat3); // false
  // print(cat1 == car); // false

  // //  NO SUCH METHOD
  // dynamic repository = Repository("products");
  // repository.id('1');
  // repository.name("Budi");
  // repository.quantity(5);
  // repository.blackhole("red");

  // //  CALLABLE
  // var sum = Sum(12, 30);
  // print(sum());

  // // ALIAS CALL
  var jumlah = Jumlah(100, 200);
  var total = Total(200, 200);
  print(jumlah());
  print(total());
}