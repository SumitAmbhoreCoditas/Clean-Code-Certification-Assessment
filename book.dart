class Book {
  // note: in dart '_' is used instead of private keyword
  String _title;
  String _author;
  int _publicationYear;

  Book(this._title, this._author, this._publicationYear);

  String getTitle() {
    return _title;
  }

  String getAuthor() {
    return _author;
  }

  int getPublicationYear() {
    return _publicationYear;
  }

  void updateTitle(String newTitle) {
    _title = newTitle;
  }

  void updateAuthor(String newAuthor) {
    _author = newAuthor;
  }

  void updatePublicationYear(int newPublicationYear) {
    _publicationYear = newPublicationYear;
  }
}
