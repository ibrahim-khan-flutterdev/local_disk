import 'package:list_for_month/list_for_month.dart' as list_for_month;

void main(){
  var fruit= <String> [] ;
  fruit.add('apple');
  fruit.add('banana');
  fruit.add('grape');
  fruit.add('peach');
  fruit.add('guava');
  fruit.add('orange');
  fruit.add('apricot');
  fruit.add('cherry');
  fruit.add('pear');
  fruit.add('coconut');
  fruit.add('mango');
  fruit.add('strawberry');
  fruit.add('pomegranate');
  fruit.add('sugarcane');
  fruit.add('bates');
  fruit.add('lychee');
  fruit.add('fig');
  fruit.add('pineapple');
  fruit.add('blueberry');
  fruit.add('dragon fruit');
  print(fruit.length);
fruit .insert (0,'khan');
print(fruit);
print(fruit[3]);
fruit .removeAt(0);
print(fruit);
fruit.remove('banana');
print(fruit);
for (var ft in fruit) {
  print(ft);
}



}
