class Book {
  String title;
  String author;
  bool isIssued;

  Book(this.title, this.author, {this.isIssued = false});

  void displayInfo() {
    print("Title: $title, Author: $author, Issued: $isIssued");
  }

  void issueBook() {
    isIssued = true;
    print("$title has been issued.");
  }

  void returnBook() {
    isIssued = false;
    print("$title has been returned.");
  }
}

class EBook extends Book {
  double fileSizeMB;

  EBook(String title, String author, this.fileSizeMB) : super(title, author);

  @override
  void displayInfo() {
    print(
      "EBook - Title: $title, Author: $author, Size: ${fileSizeMB}MB, Issued: $isIssued",
    );
  }
}

class Member {
  String name;
  int memberId;
  List<Book> borrowedBooks = [];

  Member(this.name, this.memberId);

  void borrowBook(Book book) {
    if (!book.isIssued) {
      book.issueBook();
      borrowedBooks.add(book);
    } else {
      print("${book.title} is already issued.");
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      book.returnBook();
      borrowedBooks.remove(book);
    }
  }

  void showBorrowedBooks() {
    print("$name has borrowed:");
    for (var book in borrowedBooks) {
      book.displayInfo();
    }
  }
}

void main() {
  Book b1 = Book("The Alchemist", "Paulo Coelho");
  EBook b2 = EBook("Atomic Habits", "James Clear", 4.5);

  Member m1 = Member("Sohail", 101);

  m1.borrowBook(b1);
  m1.borrowBook(b2);

  m1.showBorrowedBooks();

  m1.returnBook(b1);

  print("\nAfter returning one book:");
  m1.showBorrowedBooks();
}
