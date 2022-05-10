void main() {
  Car c = new Car('E1001', 'george', 'history', 10001);
  c.disp();
}

class Car {
  Car(String engine, String author, String genre, int isbn) {
    print(engine);
    print(author);
    print(genre);
    print(isbn);
  }

  Object? get engine => null;
  void disp() {
    print(engine);
  }
}
