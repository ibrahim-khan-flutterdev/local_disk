

import 'package:simple/simple.dart' as simple;

void main() {
  printName();
  printSymbol();
area(length: 6.9, width: 8.6);
multi(firstNumber: 6, lastNumber: 7);
}
void printName(){
  print('ibrahim');
}
void printSymbol(){
  print('&&&&&');

}

void area({required double length,required double width}){
  print('the area is ${length*width}');
  }
void multi({required int firstNumber, required int lastNumber}){
 print('the two multi ${firstNumber*lastNumber}');
}