class Person {
	String name;
	String? address;
	String country;

	Person(this.name, this.address, this.country);
	Person.withName(String name) : this(name, null, "Indonesia");
	Person.withAddress(String address) : this("John Doe", address, "Indonesia");
	Person.withCountry(String country) : this("John Doe", null, "Indonesia");
	Person.fromJakarta() : this.withAddress("Jakarta");
	Person.fromBandung() : this.withAddress("Bandung");

	void sayHello(String name) {
		print("Hello $name, My name is ${this.name}");
	}

	String getName() => name;
	void eat() => print("$name sedang makan");
	void sleep() => print("$name sedang tidur");

	@override
  String toString() {
		return """
		{
			name -> $name,
			address -> 	$address,
			country -> $country
		}
""";
  }
}

extension GoodByeOnPerson on Person {
	void sayGoodBye(String name) {
		print("Good bye $name\n- from ${this.name}");
	}
}

void main(List<String> args) {
  // var person1 = Person();

	// print(person1.name);
	// print(person1.address);
	// print(person1.country);

	// person1.sayHello("Budi");
	// print(person1.getName());
	// person1.eat();
	// person1.sleep();
	// person1.sayGoodBye("Berliana");

	print("\n\n");
	Person budi = Person("Budi", "Jl. Semangka", "Swiss");
	Person buddha = Person.withName("Buddha");
	Person anggrek = Person.withAddress("Jl. Batu");
	Person amerika = Person.withCountry("Amerika");
	Person jkt = Person.fromJakarta();
	Person bdg = Person.fromBandung();

	print(budi);
	print(buddha);
	print(anggrek);
	print(amerika);
	print(jkt);
	print(bdg);
}