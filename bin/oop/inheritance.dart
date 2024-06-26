class Manager {
  String name;
  int salary;

  Manager(this.name, this.salary);

  int getSalary() {
    return salary;
  }

  void sayHello(String name) {
    print("Hello $name, My name is ${this.name}");
  }
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name, 2000000) {
    print("vp created");
  }

  @override
  int getSalary() {
    return salary;
  }

  int getParentSalary() {
    return super.getSalary();
  }
}

class CLevel extends Manager {
  CLevel(super.name, super.salary) {
    print("clevel created");
  }

  @override
  int getSalary() {
    return salary;
  }

  int getParentSalary() {
    return super.getSalary();
  }
}

void sayHello(Manager manager) {
  if (manager is VicePresident) {
    print("Hello, vp ${manager.name}");
  } else if (manager is CLevel) {
    print("Hello, clevel ${manager.name}");
  } else {
    print("hello, manager ${manager.name}");
  }
}

void main(List<String> args) {
  var manager = Manager("John Doe", 1000000);
  manager.sayHello("Budi");

  var vp = VicePresident("Jane Doe");
  vp.sayHello("Budi");

  var clevel = CLevel("Chris Jameson", 5000000);
  clevel.sayHello("Budi");

  print(manager.getSalary());
  print(vp.getSalary());
  print(vp.getParentSalary());

  sayHello(manager);
  sayHello(vp);
  sayHello(clevel);
}
