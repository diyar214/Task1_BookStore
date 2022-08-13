import 'dart:io';

class Books 
{
  String? _bookName;
  String? _bookAuthor;
  double? _bookRating;
  static List booksList = <Books>[];

  String? get Name => _bookName;
  String? get Author => _bookAuthor;
  double? get Rate => _bookRating;

  set setName(String? Name) => _bookName = Name;
  set setAuthor(String? Author) => _bookAuthor = Author;
  set setRating(double? Rate) => _bookRating = Rate;

  Books([this._bookName, this._bookAuthor, this._bookRating]);

  static void displayAllBooks() {
    List<Books>? listBook = Books.booksList.cast<Books>();
    if (listBook.isEmpty) {
      print('There are no Books!');
    }else {
        print('Name\t\t\tAuthor\t\t\tRate');
        listBook.forEach((item) {
        print('${item.Name}\t\t\t${item.Author}\t\t\t${item.Rate}');
        }
      );
    }
  }

  static void displayHighRatedBooks() {
    List<Books>? listBook = Books.booksList.cast<Books>();
    if (listBook.isEmpty) {
      print('There are no books');
    } else {
      for (var item in listBook) {
        if (item.Rate! >= 4.0) {
          print('${item.Name}\t\t\t${item.Author}\t\t\t${item.Rate}');
        }
      }
    }
  }

  static void addBooks() {
    print('Enter the count of books want to add: ');
    String userInput = stdin.readLineSync()!;
    int numberOfBooks =int.parse(userInput);

    for(int i = 1; i <= numberOfBooks; i++) {
      print('Enter book ${i} name: ');
      String name = stdin.readLineSync()!;

      print('Enter book ${i} author:');
      String author = stdin.readLineSync()!;

      print('Enter book ${i} rate: ');
      String userBookRate = stdin.readLineSync()!;
      double rate = double.parse(userBookRate);

      Map<String, dynamic> bookMap;

      if(name.isNotEmpty && author.isNotEmpty){
        bookMap ={
          'name': name ,
          'author': author,
          'rate' : rate
        };
      }
      Books book3 = Books(name, author, rate);
      booksList.add(book3);
      print('You added new book');
    }
  }

  static void updateBook(){
    List<Books>? listBook = Books.booksList.cast<Books>();
    if (listBook.isEmpty) {
      print('There are no Books!');
    }else {
      print('Enter the book name you want to update: ');
      String? userInput = stdin.readLineSync();
      for (var item in listBook) {
        if (item.Name == userInput) {
          listBook.remove(item);
          break;
        }
      }
    }
    print('Enter book name: ');
    String name = stdin.readLineSync()!;

    print('Enter book author:');
    String author = stdin.readLineSync()!;

    print('Enter book rate: ');
    String userBookRate = stdin.readLineSync()!;
    double rate = double.parse(userBookRate);

    Map<String, dynamic> bookMap;

    if(name.isNotEmpty && author.isNotEmpty){
      bookMap ={
        'name': name ,
        'author': author,
        'rate' : rate
      };
    }
    Books book4 = Books(name, author, rate);
    booksList.add(book4);
    print('You added new book');
  }

  static void deleteBook() {
    List<Books>? listBook = Books.booksList.cast<Books>();
    if (listBook.isEmpty) {
      print('There are no Books!');
    }else {
      print('Enter the book name: ');
      String? userInput = stdin.readLineSync();
      for (var item in listBook) {
        if (item.Name == userInput) {
          listBook.remove(item);
          print('Book deleted');
          break;
        }
      }
    }
  }

  void myDisplay() => print('${this.Name}\t\t\t${this.Author}\t\t\t${this.Rate}');

  static void searchForBook(){
    List<Books>? listBook = Books.booksList.cast<Books>();
    if (listBook.isEmpty) {
      print('There are no Books!');
    }else {
      print('Enter the book name: ');
      String? userInput = stdin.readLineSync();
      for (var item in listBook) {
        if (item.Name == userInput) {
          item.myDisplay();
          break;
        }
      }
    }
  }
}