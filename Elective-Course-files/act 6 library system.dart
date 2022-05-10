import 'dart:io';

int count = 15;
void main() {
  Books book1 = Books("Cracking the Coding Interview", "Gayle Laakmann",
      "Computer Science", 9780984782802);
  Books book2 =
      Books("Clean Code", "Rober Cecil", "Computer Science", 9780132350884);
  Books book3 = Books(
      "Code Complete", "Steve McConnell", "Computer Science", 9780735619678);
  Books book4 =
      Books("Nicomachean Ethics", "Aristotle", "Philosophy", 9780023895302);
  Books book5 = Books("A History of Western Philosophy", "Bertrand Russell",
      "Philosophy", 9780041000450);
  Books book6 = Books("Meditations on First Philosophy", "René Descartes",
      "Philosophy", 9780521481267);
  Books book7 =
      Books("Atomic time", "Jonathan Binstock", "Pure Science", 9780886750725);
  Books book8 = Books("The politics of pure science", "Daniel Greenberg",
      "Pure Science", 9780226306322);
  Books book9 = Books("Wilding: The Return of Nature to a British Farm",
      "Isabella Tree", "Pure Science", 9781509805105);
  Books book10 = Books(
      "Van Richten's Guide to Ravenloft (Dungeons & Dragons, 5th Edition)",
      "Wizards RPG Team",
      "Art and Recreation",
      9780786967254);
  Books book11 = Books(
      "The Color Purple", " Alice Walker", "Art and Recreation", 9780151191536);
  Books book12 = Books(
      "Pop Out Around the World: Read, Build, and Play from New York to Beijing",
      "Pretend Friends, doupress labs",
      "Art and Recreation",
      9781950500994);
  Books book13 = Books("The Rise and Fall of the Third Reich", "William Shirer",
      "History", 9780330700016);
  Books book14 = Books("A People's History of the United States", "Howard Zinn",
      "History", 9780060148034);
  Books book15 = Books(
      "Philippine history", "Teodoro Agoncillo", "History", 9789718711064);

  print("Enter number to select Option"); //imaginary ui for our program
  print("A = No. of Books");
  print("B = List of all Books");
  print("C = No. of Lent Books");
  print("D = Add a Book");
  print("E = Lend/Borrow a Book");
  print("F = Return a Book");

  String? letter = stdin.readLineSync();
  switch (letter) {
    case "A": // print the number of books available in our system
      {
        print("Number of books are: ");
        print(count);
      }
      break;
    case "B": //show all books in our system
      {
        book1.Showdata();
        book2.Showdata();
        book3.Showdata();
        book4.Showdata();
        book5.Showdata();
        book6.Showdata();
        book7.Showdata();
        book8.Showdata();
        book9.Showdata();
        book10.Showdata();
        book11.Showdata();
        book12.Showdata();
        book13.Showdata();
        book14.Showdata();
        book15.Showdata();
      }
      break;
    case "C": // show number of lent books
      {}
      break;
    case "D": //add more books (one by one)
      {}
      break;
    case "E": //lend books
      {
        print("type book you wanna borrow: ");
        String? borrow = stdin.readLineSync();
        print("Enter your name");
        String? user_name = stdin.readLineSync();
        print("Enter your address");
        String? user_address = stdin.readLineSync();

        var u1 = User();
        u1.username = user_name;
        u1.useraddress = user_address;
        u1.bookborrowed = borrow;

        u1.disp();
      }
      break;
    case "F": //return books
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
  String? Title;
  String? Author;
  String? Genre;
  int? isbn;

  Books(String aTitle, String aAuthor, String aGenre, int ISBN) {
    this.Title = aTitle;
    this.Author = aAuthor;
    this.Genre = aGenre;
    this.isbn = ISBN;
  }

  void Showdata() {
    print(Title);
  }
}

class User {
  String? username;
  String? useraddress;
  String? bookborrowed;

  void disp() {
    print("\nUser Info");
    print(username);
    print(useraddress);
    print("Book borrowed");
    print(bookborrowed);
  }
}
