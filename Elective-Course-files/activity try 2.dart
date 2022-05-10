import 'dart:io';

int count = 3;
void main() {
  /* var book1 = Books();
  book1.Title = "Cracking the Coding Interview";
  book1.Author = "Gayle Laakmann";
  book1.Genre = "Computer Science";
  book1.isbn = 9780984782802;

  var book2 = Books();
  book2.Title = "Clean Code";
  book2.Author = "Robert Cecil";
  book2.Genre = "Computer Science";
  book2.isbn = 9780132350884;

  var book3 = Books();
  book3.Title = "Code Complete";
  book3.Author = "Steve McConnell";
  book3.Genre = "Computer Science";
  book3.isbn = 9780735619678;*/

  Books b1 = new Books("Cracking the Coding Interview", "Gayle Laakmann",
      "Computer Science", 9780984782802);

  print("Enter number to select Option");
  print("A = No. of Books");
  print("B = List of all Books");
  print("C = No. of Lent Books");
  print("D = Add a Book");
  print("E = Lend/Borrow a Book");
  print("F = Return a Book");

  String? letter = stdin.readLineSync();
  switch (letter) {
    case "A":
      {
        print(count);
      }
      break;
    case "B":
      {}
      break;
    case "C":
      {}
      break;
    case "D":
      {}
      break;
    case "E":
      {}
      break;
    case "F":
      {}
      break;
    default:
      {
        print("Invalid");
      }
  }
}

class Books {
  //class for the books

  Books(String Title, String Author, String Genre, int isbn) {}

  /*String? Title;
  String? Author;
  String? Genre;
  int? isbn;*/

}

class Title {}
