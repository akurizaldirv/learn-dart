enum CustomerLevel {
  regular, premium, vip
}

class Customer {
  String name;
  CustomerLevel level;

  Customer(this.name, this.level);

  @override
  String toString() {
    return "Customer{name: $name, level: ${level.name}}";
  }
}

void main(List<String> args) {
  var customer = Customer("Budi", CustomerLevel.premium);
  print(customer);

  print(CustomerLevel.values);
}