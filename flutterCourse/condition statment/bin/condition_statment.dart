import 'dart:io';

import 'package:condition_statment/condition_statment.dart' as condition_statment;

void main() {
  int x, y;
  stdout.write('enter the value of x:');
  x = int.parse(stdin.readLineSync()!);
  stdout.write('enter the value of y:');
  y = int.parse(stdin.readLineSync()!);
  print('the value of xy :${x + y}');
  if (x + y <= 10) {
    print('this is first quadrant');
  } else if (x + y >= -3) {
    print('this is second quadrant');
  } else if (x + y >=-6) {
    print('this is 3rd quadrant');
  }else if (x + y <=-8) {
    print('this is 4th quadrant');
  }
   else{
     print('you enter the wrong number');
  }
}