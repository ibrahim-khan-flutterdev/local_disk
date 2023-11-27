import 'package:list__string/list__string.dart' as list__string;

void main(){
  var name=<String>[];
  name.add('ibrahim');
  name.add('hamza');
  name.add('khan');
  name.insert(0, 'sir');
  print(name);
}