import 'book.dart';
import 'library.dart';

void main() {
  // Create some books
  Book book1 = Book("The Catcher in the Rye", "J.D. Salinger", 1951);
  Book book2 = Book("Pride and Prejudice", "Jane Austen", 1813);
  Book book3 = Book("The Hobbit", "J.R.R. Tolkien", 1937);
  Book book4 = Book("The Lord of the Rings", "J.R.R. Tolkien", 1954);

  // Create a library
  Library library = Library();

  // Add books to the library
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  library.addBook(book4);

  // Search for books by title
  List<Book> foundBooks = library.searchByTitle("The Hobbit");
  for (Book book in foundBooks) {
    print("${book.getTitle()} by ${book.getAuthor()}");
  }

  // Search for books by author
  foundBooks = library.searchByAuthor("Jane Austen");
  for (Book book in foundBooks) {
    print("${book.getTitle()} by ${book.getAuthor()}");
  }

  // Display the total number of books in the library
  int totalBooks = library.getTotalBooksCount();
  print("Total books in the library: $totalBooks");
}
