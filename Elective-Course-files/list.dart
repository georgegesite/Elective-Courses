class Person {
  int? id;
  String? name;
  Person(this.id, this.name);
}

void main() {
  var person = new Person(1, "Georgie");
  var person2 = new Person(2, "Flom");

  var personList = <Person>[];

  personList.add(person);
  personList.add(person2);

  for (int i = 0; i < personList.length; i++) {
    print("name is ${personList[i].name}");
  }
}
