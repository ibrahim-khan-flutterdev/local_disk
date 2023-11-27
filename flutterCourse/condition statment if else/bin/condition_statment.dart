

import 'dart:io';

void main(){
  int age;
  stdout.write('enter the age');
  age =int.parse(stdin.readLineSync()!);
  if (age < 20)
   { print('you not allowed');}

  else
   { print('welcome to the party');}
}