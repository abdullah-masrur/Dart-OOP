void main(){

  Student student =Student();
  student.name = 'Masrur';
  student.age=22;
  student.display();

  student.sem='5th';
  student.id=1234;

  Person person = Person();
  person.name='Abdullah';
  person.age=21;
  person.display();
  
  student.studentInfo();

}

//parent class person
class Person{
  String? name;
  int? age;

//method in parent class can be accessible by child also
  void display(){
    print('Name: $name');
    print('Age: $age');
  }
}

//child class extends parent class
class Student extends Person{
String? sem;
int? id;

//method in child class can be accessible by child only
void studentInfo(){
  print("Semester: $sem, ID: $id");
  }
}