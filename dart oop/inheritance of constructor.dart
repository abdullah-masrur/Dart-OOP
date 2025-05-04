void main(){
macBook mac = macBook('mac mini',700,'m1');
mac.display();
}

//parent class
class Laptop{
  String brand; 
  double price;

  Laptop(this.brand,this.price){
    print('laptop constructor called');  //printing statement to see if this const get called
  }

//method for diplaying info
  void display(){
    print('Brand: $brand, price: $price');
  }
}


//child class (macBook) extends parent class (Laptop)
class macBook extends Laptop{
String model;   //field of macBook class

//super keyword pass field value from child class constructor to parent class constructor
macBook(String brand,double price, this.model):super(brand,price); 

void display(){
  super.display();        //by using super.display, the display method of parent class will be executed first then 
  print('Model:$model');  //this line will be printed
  }
}