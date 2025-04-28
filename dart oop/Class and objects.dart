void main(){

//creating two objects of testClass named tclass1, tclass2
testClass tclass1 = testClass();
testClass tclass2 = testClass();

//assigning values to the attributes
tclass1.fName = 'Abdullah';
tclass1.lName = 'Al Masrur';
tclass1.age = 22;

tclass2.fName = 'Sherlock';
tclass2.lName = 'Homes';
tclass2.age = 33;

//calling diplay function/method by object of testClass
tclass1.display();
print('');
tclass2.display();
}

//Creating a class named 'testClass;
class testClass{

//fName,lName are the non-nullable attribites of class
  String? fName;
  String? lName;
  int? age;
  
//function to print values of attributes
  void display(){
    print('First name : $fName ');
    print('Last name  : $lName');
    print('Full name  : $fName $lName');
    print('My age is  : $age');
  }
}