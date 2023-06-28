import 'book.dart';

class Library {
  // note: in dart '_' is used instead of private keyword
  late List<Book> _books;

  Library() {
    _books = [];
  }

  void addBook(Book book) {
    _books.add(book);
  }

  List<Book> searchByTitle(String title) {
    List<Book> foundBooks = [];
    for (Book book in _books) {
      if (book.getTitle().contains(title)) {
        foundBooks.add(book);
      }
    }
    return foundBooks;
  }

  List<Book> searchByAuthor(String author) {
    List<Book> foundBooks = [];
    for (Book book in _books) {
      if (book.getAuthor().contains(author)) {
        foundBooks.add(book);
      }
    }
    return foundBooks;
  }

  int getTotalBooksCount() {
    return _books.length;
  }
}
