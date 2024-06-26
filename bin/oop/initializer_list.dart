class Customer {
  String firstname = "";
  String lastname = "";
  String fullname = "";
  int age = 0;

  Customer(this.fullname)
      : firstname = fullname.split(" ")[0],
        lastname = fullname.split(" ")[1] {
          print(fullname); 
          print(firstname);
          print(lastname);
          print("Create new customer");
        }
}

void main(List<String> args) {
  var customer = Customer("John Doe");
   print(customer.firstname);
   print(customer.lastname);
}