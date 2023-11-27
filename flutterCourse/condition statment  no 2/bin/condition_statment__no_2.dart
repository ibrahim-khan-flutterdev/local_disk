import 'dart:io';


void main(){
  String name,mobNumber, address,idNumber,check;

  stdout.write('enter the Name');
      name= stdin.readLineSync()!;
  if (name.length<15) {
    print('you have allowed');
  }
    stdout.write('enter the mob.Number');
    mobNumber = stdin.readLineSync()!;
    if (mobNumber.length <= 11) {
      print('mission pass');
    }
      stdout.write('enter the address');
      address = stdin.readLineSync()!;
      if (address.length < 15) {
        print('true');
      }
      stdout.write('enter the idNumber');
      idNumber = stdin.readLineSync()!;
      if (idNumber.length <= 13) {
        print('pass');
      }
  stdout.write('check the value');
  check= stdin.readLineSync()!;
  if( check==check) {
    print('complete the information ');
  }
  }