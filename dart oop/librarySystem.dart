void main(){
  Book book1 = Book("a study in Scarlet", "Konan doyle", '11122233', true);
  Book book2 = Book('Got', "Herper lee", '112234', true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);

  library.listBooks();

  Member member = Member("Masrur", "Mas211");

  library.loanBook( book1, member);

  library.listBooks();
}



class Library{
List<Book> books=[];
List<Loan> loans=[];

void loanBook(Book book, Member member){
  if(book.isavailable){
    book.isavailable =false;
    loans.add(Loan(book, member, DateTime.now(),DateTime.now()));
  }else{
    print('${book.title} is not available');
  }
}

void addBook(Book book){
books.add(book);
}

void listBooks(){
  print('-----List all book-------');
  for(var book in books){
    print(
      'Title: ${book.title}, Author: ${book.author}, isbn: ${book.isbn}, Available: ${book.isavailable}'
    );
  }
  
}

}

class Book{
String title;
String author;
String isbn;
bool isavailable;

Book(this.title,this.author,this.isbn,this.isavailable);
}


class Member{
String Name;
String memberID;

Member(this.Name,this.memberID);
}

class Loan{
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returndate;

  Loan(this.book,this.member,this.loanDate,this.returndate);

  void returnBook(){
      returndate = DateTime.now();
      book.isavailable = true;
  }

}