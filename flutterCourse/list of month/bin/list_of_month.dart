import 'package:list_of_month/list_of_month.dart' as list_of_month;

void main(){
  var months=<String>[];
  months.add('january');
  months.add('february');
  months.add('march');
  months.add('april');
  months.add('may');
  months.add('june');
  months.add('july');
  months.add('august');
  months.add('september');
  months.add('october');
  months.add('november');
  months.add('december');
print (months);
print(months.length);
print(months[3]);
months.insert(2,'young');
print(months);
months.remove('december');
print(months);
months.removeAt(2);
print(months);
for(var mt in months) {
  print(mt);
  } //for( int i=0;i<12;i++)
  {
  //  print( months[i]);
  }
}
