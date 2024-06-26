class User {
  String? username;
  String? name;
  String? email;

  @override
  String toString() {
    return """
    {
      username -> $username,
      name -> $name,
      email -> $email
    }
  """;
  }
}

User? createUser() {
  return null;
}

void main(List<String> args) {
  var user = User()
    ..username = "johndoe"
    ..name = "John Doe"
    ..email = "john.doe@example.com";

  print(user);

  var user2 = createUser()
    ?..username = "janedoe"
    ..name = "John Doe"
    ..email = "john.doe@example.com";

  print(user2);
}