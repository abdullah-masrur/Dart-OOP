void main(){

  // Create a list named 'random' containing Student objects.
  List<Student> random = [
    // Add a Student object with name 'Abdullah' and age 22.
    Student('Abdullah',22),
    // Add a Student object with name 'Masrur' and age 23.
    Student('Masrur',23)
  ];

  // Iterate through each Student object in the 'random' list.
  random.forEach((element){
    // Print the name and age of the current Student object.
    print('Name ${element.Name}, Age ${element.Age}');
  });

}

class Student{

  // Declare a nullable String variable 'Name'.
  String? Name;
  // Declare a nullable integer variable 'Age'.
  int? Age;

  // Constructor for the Student class, taking a Name (String) and Age (int).
  Student(String Name, int Age){
    // Assign the passed 'Name' to the class's 'Name' variable.
    this.Name = Name;
    // Assign the passed 'Age' to the class's 'Age' variable.
    this.Age = Age;
  }

  // Method to display the information of a Student.
  void displayInfo(){
    // Print a separator line.
    print("------------------");
    // Print the Name of the Student.
    print("Name: $Name");
    // Print the Age of the Student.
    print("Age: $Age");
    // Print a separator line.
    print("------------------");

  }
}