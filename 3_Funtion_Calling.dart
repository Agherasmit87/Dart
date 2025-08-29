import 'dart:io';

String uname = "";
String sname = "";
void main() {
  print("Please Enter Your Name Here : ");
  uname = stdin.readLineSync().toString();

  print("Please Enter Your Surname : ");
  sname = stdin.readLineSync().toString();

  display();
}

void display() {
  print("Your Full name is $uname $sname ");
}
