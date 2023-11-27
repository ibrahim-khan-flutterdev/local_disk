

import 'dart:developer';
import 'dart:io';

void main() {
  int firstNumber, secondNumber;
  stdout.write('enter the first number');
  firstNumber = int.parse(stdin.readLineSync()!);
  stdout.write('enter the second number');
  secondNumber = int.parse(stdin.readLineSync()!); //change to int from string
  var add = firstNumber + secondNumber; //var sa matlab dee declaration intilization darik pata yeee//
  print('the sum$add');
  var sub = firstNumber-secondNumber;
  print('the sub is :$sub');
  var multi = firstNumber*secondNumber;
  print('the sub is :$multi');
//   stdout.write('enter the first number');
//   firstNumber=int.parse(stdin.readLineSync()!);
//   stdout.write('enter the second number');
//   secondNumber=int.parse(stdin.readLineSync()!);
//   var result1 = firstNumber-secondNumber;
//   print('the sub$result1');
// stdout.write('enter the first number');
// firstNumber=int.parse(stdin.readLineSync()!);
// stdout.write('enter the second number');
// secondNumber=int.parse(stdin.readLineSync()!);
// var result2 = firstNumber/secondNumber;
// print('the divide$result2');
//
// stdout.write('enter the first number');
// firstNumber=int.parse(stdin.readLineSync()!);
// stdout.write('enter the second number');
// secondNumber=int.parse(stdin.readLineSync()!);
// var result3 = firstNumber*secondNumber;
// print('the multiply$result3');}
}