import 'package:map/map.dart' as map;

void main(){
   var teacher=<String,dynamic>{};
 teacher['name']='ibrahim';
   teacher['salary']=30000;
   teacher['address']='peshawar';
   teacher['age']=21;
   teacher['contact']=0876433243;
   print(teacher);
  print(teacher.keys);
 print(teacher.values);

   for(var te in teacher.entries){
     print('the ${te.key} is ${te.value}');
   }
}