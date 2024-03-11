import 'dart:io';
class Book{
  String? _title;
  String?  _author;
  String? _isbn;

  //contructor
  Book(this._title,this._author,this._isbn);

  Book.origin(){
  }
  
  //getter
  String? get title => _title;
  String? get author => _author;
  String? get isbn => _isbn;

  //setter
  set setTitle(String title){
    _title = title;
  }

  set setAuthor(String author){
    _author = author;
  }

  set setIsbn(String isbn){
    _isbn = isbn;
  }

  //method
  void infor(){
    print("Enter title: ");
    this._title = stdin.readLineSync();
    print("Enter author: ");
    this._author = stdin.readLineSync();
    print("Enter isbn: ");
    this._isbn = stdin.readLineSync();
  }

  @override
  String toString(){
    return "title:$title ; author:$author ; isbn:$isbn";
  }
}


class Library{
  Book? book;
  var listBook = [];
  void add(){
    Book newBook = Book.origin();
    newBook.infor();
    listBook.add(book);
  }
  void output(){
    for(int i=0;i<listBook.length;i++){
      print(listBook[i]);
    }
  }
}

class Member{
  String? _name;
  String? _address;
  String? _memberId;

  //contructor
  Member(this._name,this._address,this._memberId);
  Member.orgin();

  //getter
  String? get name => _name;
  String? get address => _address;
  String? get memberId => _memberId;

  //setter
  set setName(String name){
    this._name =  name;
  }
  set setAddress(String address){
    this._address =  address;
  }
  set setMemberId(String memberId){
    this._memberId =  memberId;
  }

  //method
  void inforMember(){
    print("Enter name: ");
    this._name = stdin.readLineSync();
    print("Enter address: ");
    this._address = stdin.readLineSync();
    print("Enter memberId: ");
    this._memberId = stdin.readLineSync();
  }

  @override
  String toString(){
    return "title:$_name ; author:$_address ; isbn:$_address";
  }
} 