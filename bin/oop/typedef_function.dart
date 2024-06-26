// // creating alias for String obj.function into Filter
typedef Filter = String Function(String);

void main(List<String> args) {
  sayHello("Budi", (value) {
    return value.toUpperCase();
  });
}

void sayHello(String name, Filter filter) {
  print("Hello ${filter(name)}");
}
