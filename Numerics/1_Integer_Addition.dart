// this is user input function in dart language

import 'dart:io';

void main() {
  print("Please Enter First Value Here : ");
  int fvalue = int.parse(stdin.readLineSync().toString());

  print("Plaese Enter Second Value Here : ");
  int svalue = int.parse(stdin.readLineSync().toString());

  int total = fvalue + svalue;

  print("Total value is : $total");
}
