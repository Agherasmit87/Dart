import 'dart:io';

class Bankaccount {
  String accname; // account name
  String accnum; // account number

  double accbal =
      0.00; // starting account balance may be in big value so use double variable
  static double totalbalance =
      0.00; // static keyword before variable is used to not allow change
  double amount = 0.00; // amount entered by user

  //Bankaccount is constructer of Bankaccount should be always same name

  Bankaccount(
    this.accname,
    this.accnum,
    this.accbal,
  ); //3 named parameters (acccount name , account number , account balance)

  void balance() //Balance Function
  {
    print("\n");
    print("Your Current Balance is $accbal");
    print("Please Enter New Money");
    double balance = double.parse(stdin.readLineSync().toString());
    if (balance <= 0) {
      print("\n");
      print("Please Enter Positive Value");
    } else {
      accbal = accbal + balance;
      print("\n");
      print(
        "Rs. $balance is added in your account Your Current Balance is $accbal",
      );
    }
  }

  void deposit() //Deposit Function
  {
    print("\n");
    print("Enter Amount to be deposit");
    amount = double.parse(stdin.readLineSync().toString());

    if (amount < 0) {
      print("\n");
      print("Please Enter Positive Amount");
    } else {
      accbal = accbal + amount;
      print("\n");
      print(
        " Rs. $amount/- is Deposited in Your Account, Balance is $accbal/-",
      );
    }
  }

  void withdraw() //Withdraw Function
  {
    print("\n");
    print("Enter AmounDt to withdraw");
    amount = double.parse(stdin.readLineSync().toString());

    if (amount < 0) {
      print("\n");
      print("Please Enter Positive Amount");
    } else {
      accbal = accbal - amount;
      print("\n");
      print(
        " Rs. $amount/- is Withdraw from Your Account, Balance is $accbal/-",
      );
    }
  }

  void display() //Display Function
  {
    print("\n");
    print("Your Name is : $accname");
    print("Your Account Number is : $accnum");
    print("Your Current Balance is : $accbal");
    print("Note - Please Maintain Minimum Balance of 10,000/-");
  }
}

void main() //Main Function
{
  print("\n");
  print("Please Enter Bank Account Holder Name : ");
  String accname = stdin.readLineSync().toString(); //Input Name

  print("\n");
  print("Please Enter Bank Account Number : ");
  String accnum = stdin.readLineSync().toString(); //Input Account Number

  print("\n");
  print("Please Enter Bank Account Balance : ");
  double accbal = double.parse(
    stdin.readLineSync().toString(),
  ); //Input Starting Balance

  var d1 = Bankaccount(
    accname,
    accnum,
    accbal,
  ); //3 Parameter Assigned to Bank Account Constructor

  d1.balance(); //Calling Balance Method
  //  d1.deposit(); //Calling Deposit Method
  d1.withdraw(); //Calling Withdraw Method
  d1.display(); //Calling Display Method
}
