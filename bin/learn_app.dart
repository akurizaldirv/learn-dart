void main(List<String> arguments) {
  const String name = "Mario";
  int age = 20;
  bool isAlive = true;
  double avgRating = 10;
  var hobbies = ["Makan", "Tidur"];
  var parents = const ["Rukmini", "Kuatno"];
  // parents.add("Doremi"); // cannot added cause its unmodifiable
  hobbies.add("value");

  // // FUNCTION CALL
  // greet(name, age);

  // // // LOOPING
  // List<int> scores = [12,34,64,213,43,123];
  // for (int a = 0; a < scores.length; a++) {
  //   print(scores[a]);
  // }
  //
  // for (var score in scores.where((s) => s > 100)) {
  //   print("the score is $score");
  // }
  // for (var score in scores.indexed) {
  //   print(score.runtimeType);
  //   break;
  //   // if (score.$1 > 100) {
  //   //   continue;
  //   // }
  //   print("the score is ${score.$2}");
  // }

  // // SETS AND MAPS
  var whatType = {};
  print(whatType.runtimeType); // if it's empty brackets and var typed, automatically set to Maps
  whatType["first"] = "venus";
  print("whattypes ${whatType["first"]} ${whatType.runtimeType}");



  // // PRINTING
  // print("name\t\t\t: $name");
  // print("age\t\t\t\t: $age");
  // print("alive status\t: $isAlive");
  // print("average rating\t: $avgRating");
  // print("parents\t\t\t: $parents");
  // print("hobbies\t\t\t: $hobbies");
  // print("hobbies types\t: ${hobbies.runtimeType}");
}

void greet(String name, int age) {
  print("Hello, my name is $name. I was born in ${getBirthYear(age)} ");
}

int getBirthYear(int age) {
  return 2024 - age;
}
