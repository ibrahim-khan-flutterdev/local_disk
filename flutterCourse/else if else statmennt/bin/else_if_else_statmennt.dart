

import 'dart:io';

void main() {
  int age, marks;

  stdout.write('enter age');
  age = int.parse(stdin.readLineSync()!);
  stdout.write('enter marks');
  marks = int.parse(stdin.readLineSync()!);
  if (age < 20) {
    print('ALLOWED THE CLG');
  }
 else if(marks>40){
print('you have pass');
 }

}