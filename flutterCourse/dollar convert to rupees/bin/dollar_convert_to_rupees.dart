import 'dart:io';

import 'package:dollar_convert_to_rupees/dollar_convert_to_rupees.dart' as dollar_convert_to_rupees;

void main() {
  double dollar, rupees, rate;
  stdout.write('enter the:dollar');
  dollar = double.parse(stdin.readLineSync()!);
  stdout.write('enter the rate:');
rate=double.parse(stdin.readLineSync()!);
rupees=dollar*rate;
print('the pakistani$rupees');
// print('this is rupees${dollar*rate}');//
if( rupees<10000){

  print('loser');
}else{
  print('you are lucky');
}


}