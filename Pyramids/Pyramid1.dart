import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) //this is row goes to 5 row
  {
    //raw
    for (int j = 1; j <= i; j++) {
      // this is column
      stdout.write("* ");
    }
    stdout.write("\n"); // move to next line
  }
}
