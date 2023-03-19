






//Bank Account Properties Programe


class BankAccount {
  double balance = 0;
  String Account_Number = "";
  BankAccount(this.balance, this.Account_Number);
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

class CheckingAccount extends BankAccount {
  double transaction_limit = 0;
  CheckingAccount(double balance, String Account_Number, this.transaction_limit)
      : super(balance, Account_Number);
  void withdraw(double amount) {
    if (amount > transaction_limit) {
      print("Withdrawal amount execeeds transaction limit!");
    } else {
      balance -= amount;
      print("Amount of $amount dollar successfully withdrawed!");
    }
  }
}


//Vehicle info and track driving programe 

//all class mention

class Vehicle {
  String brand = "";
  String model = "";
  String year = "";
  Vehicle(this.brand, this.model, this.year);
  void drive() {
    print("Indicating that the vehicle is being driven");
  }
}


class Car extends Vehicle {
  int numDoors = 0;

  Car(String brand, String model, String year, this.numDoors) : super(brand, model, year);
  
void drive() {
    print("The $year $brand $model with $numDoors doors was a classic Car.");
  }
}













//Person information programe

class Person {
  String firstname = "";
  String lastname = "";
  Person(this.firstname, this.lastname);
  String fullname() {
    return firstname + " " + lastname;
  }
}

class Student extends Person {
  String major;
  Student(String firstname, String lastname, this.major)
      : super(firstname, lastname);
  String fullname() {
    return "${super.fullname()} ($major)";
  }
}

void main() {

  //Vehicle Programe Print

  print("Vehicle class");
  Car v1 = Car("Honda Accord", "VTi 2.4", "2018", 4);
  v1.drive();

  //Bank Account  Programe Print

  print("\n\nBank class");
  CheckingAccount Account = CheckingAccount(10000, "1235345324234", 2000);
  print("Balance before deposit: " + Account.balance.toString());
  Account.deposit(1000);
  print("Balance after deposit: " + Account.balance.toString());
  Account.withdraw(4000);
  Account.withdraw(2000);
  print("\n\nPerson class");


  //Student   Programe Print
  Student s1 = Student("Yasir", "Kashif", "Software Engineering");
  print(s1.fullname());
}