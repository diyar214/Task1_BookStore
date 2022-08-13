import 'dart:io';

import './BookClass.dart';

void main()
{

  Books book1 = Books('Java', 'Diyar Hussein', 3.0);
  Books book2 = Books('Dart', 'Ali mohammed', 4.3);

  Books.booksList.add(book1);
  Books.booksList.add(book2);

  bool flag = true;
  while (flag){

  print('''
Main menu
1- Display all books
2- Display books with rate +4
3- Add book
4- Update book
5- Delete book
6- Search
7- Exit
Write your choice: ''');

  String? userInput = stdin.readLineSync();
  int convertedUserInput = int.parse(userInput!);

  switch(convertedUserInput) {
    case 1:
      Books.displayAllBooks();
      break;

    case 2:
      Books.displayHighRatedBooks();
      break;

    case 3:
      Books.addBooks();
      break;

    case 4:
      Books.updateBook();
      break;

    case 5:
      Books.deleteBook();
      break;

    case 6:
      Books.searchForBook();
      break;
    }
    if(convertedUserInput == 7) {
      flag == false;
      break;
    }
  }
}