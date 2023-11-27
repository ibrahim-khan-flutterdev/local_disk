
import 'dart:io';

void main() {
  int month;
  stdout.write('enter your month');
  month = int.parse(stdin.readLineSync()!);
  if (month == 1) {
    print('january');
  }

  if (month == 2) {
    print('feb');
  }
  if (month == 3) {
    print('march');
  }
  if (month == 4) {
    print('april');
  }
  if (month == 5) {
    print('may');
  }
}