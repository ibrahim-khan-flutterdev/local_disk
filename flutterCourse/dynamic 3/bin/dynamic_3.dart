import 'package:dynamic_3/dynamic_3.dart' as dynamic_3;

void main(){
  dynamic value;
  value='ibrahim';
  print (value);//(the type (T)every time is capital latter)//
  print (value.runtimeType);
  value=1234567;
  print (value);
  print (value.runtimeType);
  value=true;
  print(value);
  print(value.runtimeType);
  value=333.99;
  print (value);
  print(value.runtimeType);
}