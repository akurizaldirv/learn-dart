abstract class Location {
  String name;

  Location(this.name);

  String format(); // force child to implement this method
}

class City extends Location {
  City(super.name);
  
  @override
  String format() {
    return """
    {
      city: $name
    }
""";
  }  
}

void main(List<String> args) {
  var city = City("Surabaya");
  // var loc = Location("lokasi"); // error: cannot initiated
  // print(loc);
  print(city.format());
}